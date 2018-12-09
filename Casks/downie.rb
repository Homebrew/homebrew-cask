cask 'downie' do
  version '3.5.4,1918'
  sha256 '9773ab2b3278549659d782c6b465f39adf89324a4ede9dbb877cee7e2a5a55f5'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
