cask "data-rescue" do
  version "6.0.1"
  sha256 "b6f14dd90acca70b9c35c46181e133c95c81e0792c3a0cf50ad2d0f6680aa19f"

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  desc "Data recovery software"
  homepage "https://www.prosofteng.com/data-rescue-recovery-software/"

  app "Data Rescue.app"
end
