cask "eqbase" do
  version "1.0.4"
  sha256 "059ebfca8d58f83b7b359ef7f1d99e74e98bbff6fc2c464b15a0f6960c2ffa34"

  url "https://updates.eqbase.app/EQBase-#{version}.dmg"
  name "EQBase"
  desc "System-wide audio equalizer and effects"
  homepage "https://eqbase.app/"

  livecheck do
    url "https://updates.eqbase.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "EQBase.app"

  uninstall launchctl: "com.boldbiscuit.eqbase.helper",
            delete:    "/Library/Audio/Plug-Ins/HAL/EQBaseDriver.driver"

  zap trash: [
    "~/Library/Application Support/EQBase",
    "~/Library/Caches/com.boldbiscuit.eqbase",
    "~/Library/HTTPStorages/com.boldbiscuit.eqbase",
    "~/Library/Preferences/com.boldbiscuit.eqbase.plist",
    "~/Library/WebKit/com.boldbiscuit.eqbase",
  ]
end
