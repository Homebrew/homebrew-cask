cask 'downie' do
  version '3.5.2,1914'
  sha256 '9dd0479baed109f05f80ff61929a2e42d4d1c72ef3cfe40e173fdb2eafa82d42'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
