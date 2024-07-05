cask "hyperkey" do
  version "0.36"
  sha256 "289c0980e72f56edd5e072f155b19aface3b0b0653c892a152e392392affde7e"

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
