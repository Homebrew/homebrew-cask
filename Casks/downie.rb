cask 'downie' do
  version '3.5.10,1938'
  sha256 'ed40c62b64bc48075a722ad8598e299d3e1ea7d46dada7c83a7713c79cd63698'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
