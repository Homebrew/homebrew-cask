cask 'downie' do
  version '3.8.7,2073'
  sha256 'b69efc25f00a95d24e4260fbf155e3b756df459b967d0bdbe0fa6f1f4f0adfd9'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.dmg"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
