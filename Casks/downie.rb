cask 'downie' do
  version '4.0.8,4092'
  sha256 '00e629d94c4c8d4d9e79754a3584673203eb5c15717eec871e3488747af9cf69'

  # charliemonroesoftware.com/ was verified as official when first introduced to the cask
  url "https://charliemonroesoftware.com/trial/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://charliemonroesoftware.com/trial/downie/v#{version.major}/updates.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
