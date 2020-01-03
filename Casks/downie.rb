cask 'downie' do
  version '3.9.5,3020'
  sha256 'd2a67677d159b65f7773277f1d0cd5c8ba9c408208c5d406ccf366322a2c9a2b'

  # charliemonroesoftware.com was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/downie/v#{version.major}/updates.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
