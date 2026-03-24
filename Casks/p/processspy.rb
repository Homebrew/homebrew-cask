cask "processspy" do
  version "1.11.0"
  sha256 "01ce7b43697e3c5c36c7dc03011709c47a46cb4c7137b5ba78e07a4939e603b9"

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
