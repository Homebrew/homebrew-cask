cask 'downie' do
  version '3.6.4,1965'
  sha256 '372384163d3983dcf571eacdabdc7d6f508946d7ce74316d9e27d948916fc94c'

  url "https://trial.charliemonroe.net/downie/v#{version.major}/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml"
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
