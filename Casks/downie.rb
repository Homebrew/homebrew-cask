cask 'downie' do
  version '3.3.2,1819'
  sha256 'b66aaab4f2067e87548ed58168b09f2b62072e2e506ad987ec7ac2b98f480ab7'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.major}_#{version.after_comma}.zip"
  appcast "https://trial.charliemonroe.net/downie/updates_#{version.major}.xml",
          checkpoint: '285fd649effee92df4c635360974de494e8f60696a36cffc33c38538a3e6624b'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
