cask "dataspell" do
  arch arm: "-aarch64"

  version "2022.3.2,223.8617.58"
  sha256 arm:   "5cd47a990d611fefa46ec9bfb24c32e0b729e891ae4d70cc5804a8864f1e65c2",
         intel: "dc1d49b168bf5f798d228d43a17e5dbbcfacee258d7cc0eac045de98d0f17a3f"

  url "https://download.jetbrains.com/python/dataspell-#{version.csv.first}#{arch}.dmg"
  name "DataSpell"
  desc "IDE for Professional Data Scientists"
  homepage "https://www.jetbrains.com/dataspell/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DS&latest=true&type=release"
    strategy :json do |json|
      json["DS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DataSpell.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "dataspell") }.each do |path|
      if File.readable?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/DataSpell*",
    "~/Library/Application Support/JetBrains/DataSpell*",
    "~/Library/Caches/JetBrains/DataSpell*",
    "~/Library/Logs/JetBrains/DataSpell*",
    "~/Library/Preferences/com.jetbrains.dataspell.plist",
    "~/Library/Preferences/DataSpell*",
    "~/Library/Preferences/jetbrains.dataspell.*.plist",
    "~/Library/Saved Application State/com.jetbrains.dataspell.savedState",
  ]
end
