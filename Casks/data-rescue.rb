cask "data-rescue" do
  version "6.0.2"
  sha256 "39d6d1083b686d785b87b9dc74e0af8f971d3a1bab4416d6f53e990cdbaf4852"

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  desc "Data recovery software"
  homepage "https://www.prosofteng.com/data-rescue-recovery-software/"

  app "Data Rescue.app"
end
