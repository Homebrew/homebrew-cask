cask "dataspell" do
  arch arm: "-aarch64"

  version "2022.3.3,223.8836.46"
  sha256 arm:   "63e272a006a407375c114834bcb17be732205e5d1e7284f00a4af09bb4601935",
         intel: "3fa1680696cf54f7d75d7800c64cc11a4eb1fe6d41bec9e019e6d8b2e581aab0"

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
