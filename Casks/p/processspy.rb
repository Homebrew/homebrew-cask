cask "processspy" do
  version "1.6.1"
  sha256 "a54b27adbb02a4f616e156405160354f172939522393006447c5a7262e429a41"

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
