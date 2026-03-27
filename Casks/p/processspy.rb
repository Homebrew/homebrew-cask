cask "processspy" do
  version "1.11.1"
  sha256 "ef5a7b80307a471a6c9eab8422720bab06efa13b5084b55cd22af3884af95e3a"

  url "https://process-spy.app/archive/ProcessSpy_#{version}.dmg"
  name "ProcessSpy"
  desc "Process monitor"
  homepage "https://process-spy.app/"

  livecheck do
    url "https://process-spy.app/archive/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "ProcessSpy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.itone.ProcessSpy",
    "~/Library/Preferences/com.itone.ProcessSpy.plist",
    "~/Library/Saved Application State/com.itone.ProcessSpy.savedState",
  ]
end
