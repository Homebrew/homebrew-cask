cask "hyperkey" do
  version "0.34"
  sha256 "b612474afe3c1dca6bbe8865de295c6a903586a8a1df82406be82a3599d62cb4"

  url "https://hyperkey.app/downloads/Hyperkey#{version}.dmg"
  name "Hyperkey"
  desc "Convert your caps lock key or any of your modifier keys to the hyper key"
  homepage "https://hyperkey.app/"

  livecheck do
    url "https://hyperkey.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Hyperkey.app"

  uninstall quit: "com.knollsoft.Hyperkey"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.HyperkeyLauncher",
    "~/Library/Application Support/Hyperkey",
    "~/Library/Caches/com.knollsoft.Hyperkey",
    "~/Library/Containers/com.knollsoft.HyperkeyLauncher",
    "~/Library/Cookies/com.knollsoft.Hyperkey.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Hyperkey",
    "~/Library/HTTPStorages/com.knollsoft.Hyperkey.binarycookies",
    "~/Library/Preferences/com.knollsoft.Hyperkey.plist",
  ]
end
