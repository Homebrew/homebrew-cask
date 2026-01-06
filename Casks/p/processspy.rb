cask "processspy" do
  version "1.10.2"
  sha256 "1f9ad414db25eac7fced0682354738d357374bb906fd950f29d61cf9992be211"

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
