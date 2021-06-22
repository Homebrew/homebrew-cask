cask "ears" do
  version "1.2.2,15"
  sha256 "f65abc67e55c309031f84f91248183c888b0137cf1e68cb89a82caebaab68941"

  url "https://download.clickontyler.com/ears/ears_#{version.after_comma}.zip"
  name "Ears"
  desc "Instant audio switcher"
  homepage "https://clickontyler.com/ears/"

  livecheck do
    url "https://shine.clickontyler.com/appcast.php?id=50"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Ears.app"

  uninstall launchctl: "com.clickontyler.Ears.Launcher"

  zap trash: [
    "~/Library/Application Support/Ears",
    "~/Library/Application Support/com.clickontyler.Ears",
    "~/Library/Caches/com.clickontyler.Ears",
    "~/Library/Preferences/com.clickontyler.Ears.plist",
    "~/Library/WebKit/com.clickontyler.Ears",
  ]
end
