cask 'downie' do
  version '3.2.2,1776'
  sha256 'e6218195bb071c08ee030e8b5cd6ae3fd709d62496b57240a1f0315c59fd5b95'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: 'b2a053aeeef465361989edc9a5be132ed6ade856b4e674db2e5d208d635b5e8c'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
