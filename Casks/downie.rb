cask "downie" do
  version "4.1.2,4146"
  sha256 "488c3bafd5db8994af557171659c8cf736e8d47b88d3b4a3e0cfb709d0fdaeac"

  # charliemonroesoftware.com/ was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
  name "Downie"
  homepage "https://software.charliemonroe.net/downie.php"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Downie #{version.major}.app"
end
