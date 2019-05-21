cask 'downie' do
  version '3.7.3,2013'
  sha256 'ea0430f645172cc96b58fe8ab5923e0a4bcb2dbb2c6d29b4ba3fd8980c7a048b'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
