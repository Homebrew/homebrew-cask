cask 'downie' do
  version '3.8.11,2093'
  sha256 'dfd9271b1dd072bcd5afcf29dcf748fec1d1c0f255ce31c55e7d5bec7f11c2a2'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
