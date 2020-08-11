cask "downie" do
  version "4.1.4,4155"
  sha256 "916e9f7ec282bb865885567762545f1c6f0bf4ab82b10601a4c84e991662bdf9"

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
