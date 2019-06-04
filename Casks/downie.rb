cask 'downie' do
  version '3.7.5,2018'
  sha256 '4e8e71f1f302458c1207eb14cf8d4a898c0c01db14e87c7e4a54566ce1474c47'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
