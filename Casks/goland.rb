cask "goland" do
  version "2021.1.1,211.7142.13"

  if Hardware::CPU.intel?
    sha256 "82517a6c0bfd9f4c969e6a0e2239266be537811ca259588bb5ec9a29e42d2065"
    url "https://download.jetbrains.com/go/goland-#{version.before_comma}.dmg"
  else
    sha256 "ba88fc3943ae6d9a9aa62b09f7864fb76d9fdb5918318648aaf2bc9fd025cbb1"
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
    "~/Library/Application Support/JetBrains/GoLand",
    "~/Library/Application Support/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Caches/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Logs/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Preferences/GoLand#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.goland.plist",
    "~/Library/Saved Application State/com.jetbrains.goland.SavedState",
  ]
end
