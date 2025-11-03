cask "hyperkey" do
  version "1.54"
  sha256 "e04dd07510bcb1434db27bc5dfc52cfa872c67a225e8c2d61d505868d9d0538a"

  url "https://hyperkey.app/downloads/Hyperkey#{version}.dmg"
  name "Hyperkey"
  desc "Convert your caps lock key or any of your modifier keys to the hyper key"
  homepage "https://hyperkey.app/"

  livecheck do
    url "https://hyperkey.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

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
