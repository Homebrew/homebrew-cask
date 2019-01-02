cask 'downie' do
  version '3.5.6,1924'
  sha256 '2f879d7eb686415a1354e48ec2551281cfbd329b8a9db5cf4baf516d2387c81b'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
