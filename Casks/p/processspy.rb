cask "processspy" do
  version "1.15.2"
  sha256 "f04806b3887ac56998d6639fd411f4a5c2c2c6b02a382cd7751518e60d39046c"

  url "https://process-spy.app/archive/ProcessSpy_#{version}.dmg"
  name "ProcessSpy"
  desc "Process monitor"
  homepage "https://process-spy.app/"

  livecheck do
    url "https://process-spy.app/archive/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ProcessSpy.app"

  uninstall quit: "com.itone.ProcessSpy"

  zap trash: [
    "~/Library/HTTPStorages/com.itone.ProcessSpy",
    "~/Library/Preferences/com.itone.ProcessSpy.plist",
    "~/Library/Saved Application State/com.itone.ProcessSpy.savedState",
  ]
end
