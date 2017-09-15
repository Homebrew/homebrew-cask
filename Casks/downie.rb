cask 'downie' do
  version '2.9.13,1533'
  sha256 '30607298a4950fd1453991f4432d4f3716900718cc524b3087e934567a4d8c96'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: '70ea087a3e53f986c9777fce53adfe0afc1df3d2bc8674636fb759ae967ac8e7'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
