cask 'downie' do
  version '3.5.5,1921'
  sha256 'dedc26cf7a99f26c91ae1e1dbc5090618a32a9f6783d3a20186e8a3d39a5fb1f'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
