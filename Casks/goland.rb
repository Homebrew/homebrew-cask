cask "goland" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.2.4,212.5457.54"

  if Hardware::CPU.intel?
    sha256 "2b264407ed6ad30e5489e76dd1191f9aeff691c0d9fc55f83dbeb372d53d58ee"
  else
    sha256 "32485168d0cd1a0c79a6e334ae1de77cc160f84982d9ac7c1ceba33efd53a0ec"
  end

  url "https://download.jetbrains.com/go/goland-#{version.before_comma}#{arch}.dmg"
  name "Goland"
  desc "Go (golang) IDE"
  homepage "https://www.jetbrains.com/go/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["GO"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
