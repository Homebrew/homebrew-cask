cask 'downie' do
  version '4.0.3,4073'
  sha256 '32720f0b5c0adb2e0a434030af0a2c3d81250cbf701d973134a53e2aca8132c7'

  # charliemonroesoftware.com was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
