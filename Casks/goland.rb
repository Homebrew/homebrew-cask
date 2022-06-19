cask "goland" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.1.2,221.5787.30"

  if Hardware::CPU.intel?
    sha256 "eeae429e511927b054f43498c1a6768a7bdae5e71fbf8f243bf500b9ff734156"
  else
    sha256 "d2d67b52118bc12671b56d1b69c0e73c305d1cc077b17ac30904eb14b970d923"
  end

  url "https://download.jetbrains.com/go/goland-#{version.csv.first}#{arch}.dmg"
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
    "~/Library/Preferences/com.jetbrains.goland.plist",
    "~/Library/Preferences/GoLand#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.goland.SavedState",
  ]
end
