cask "hyperkey" do
  version "0.8"
  sha256 "9c6f36aa6a1cf30fc637d22f0efc78fad16aa21622cfda0451c192b4c389c510"

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
