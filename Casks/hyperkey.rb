cask "hyperkey" do
  version "0.10"
  sha256 "e166d9a16f9dfb3f2fa6d83ae22d6368a6e1b0deac3b94a2ac432006ec5c6973"

  url "https://hyperkey.app/downloads/Hyperkey#{version}.dmg"
  name "hyperkey"
  desc "Convert your caps lock key or any of your modifier keys to the hyper key"
  homepage "https://hyperkey.app/"

  livecheck do
    url :homepage
    regex(/href=.+(\d+(:?\.\d+)).dmg/i)
  end

  app "Hyperkey.app"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.HyperkeyLauncher",
    "~/Library/Application Support/Hyperkey",
    "~/Library/Caches/com.knollsoft.Hyperkey",
    "~/Library/Containers/com.knollsoft.HyperkeyLauncher",
    "~/Library/Preferences/com.knollsoft.Hyperkey.plist",
  ]
end
