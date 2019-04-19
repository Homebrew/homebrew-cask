cask 'downie' do
  version '3.6.8,1990'
  sha256 '3b8da11f7366fd1c253e1659e1ea59206f3b2cbc95f285fcdcb7025bc8fdc519'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
