cask 'downie' do
  version '3.1672'
  sha256 '2efcdb4ab6ae28f2bdc6671dea9b334170d61521a3e40522f5b61298684c7a86'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.dots_to_underscores}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: '99690af028f2a82d3b25618a0513fb9ac83d7be98e22a36fe7da8834f113202c'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
