cask 'downie' do
  version '3.4.2,1866'
  sha256 '95e1f1885712f182875c60db99e79c4e6543237764a9e60fe7e021cc79e2d387'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
