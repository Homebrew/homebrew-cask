cask 'downie' do
  version '3.6.1,1950'
  sha256 '7a29fb6aa42684e9218c2daef5bcc38beedb9cfc0c66a7674310dc8257a41cc0'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
