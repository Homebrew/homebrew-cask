cask 'downie' do
  version '4.0.16,4125'
  sha256 '64f3f1b5ba6ce8367d47e1f09e6d257c68d854b11ea4b2f381f70df82d7a2e02'

  # charliemonroesoftware.com/ was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
