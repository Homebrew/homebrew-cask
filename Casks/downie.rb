cask 'downie' do
  version '3.4.8,1888'
  sha256 '1e3c72c70c523c8b18e82052049a7f69fa3cca72a709397f61ee63f2d5d31650'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
