cask "downie" do
  version "4.1.8,4169"
  sha256 "27b2a70c40d551624e02f19e4f02b175d972767d9c2241274895093f70c6d814"

  # charliemonroesoftware.com/ was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://software.charliemonroe.net/downie.php"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Downie #{version.major}.app"
end
