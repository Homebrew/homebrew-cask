cask "goland" do
  version "2020.3.2,203.7148.71"

  if Hardware::CPU.intel?
    sha256 "e9dfe06fb38eb29e320985cc179ce7c1995a5c10fe0bff3eca8d40456e277503"
    url "https://download.jetbrains.com/go/goland-#{version.before_comma}.dmg"
  else
    sha256 "be94ba11b60689446e75d6372cc9aec555ae21e1037239b09240ec8031dc6262"
    url "https://download.jetbrains.com/go/goland-#{version.before_comma}-aarch64.dmg"
  end

  name "Goland"
  desc "Go (golang) IDE"
  homepage "https://www.jetbrains.com/go/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=release"
    strategy :page_match do |page|
      version = page.match(/"version":"(\d+(?:\.\d+)*)/i)
      build = page.match(/"build":"(\d+(?:\.\d+)*)/i)
      "#{version[1]},#{build[1]}"
    end
  end

  auto_updates true

  app "GoLand.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "goland") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/GoLand",
    "~/Library/Application Support/GoLand#{version.major_minor}",
    "~/Library/Caches/GoLand#{version.major_minor}",
    "~/Library/Logs/GoLand#{version.major_minor}",
    "~/Library/Preferences/GoLand#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.goland.plist",
    "~/Library/Saved Application State/com.jetbrains.goland.SavedState",
  ]
end
