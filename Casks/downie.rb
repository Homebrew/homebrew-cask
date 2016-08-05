cask 'downie' do
  version '2.4.1271'
  sha256 'd028f5cd68bedb0abbc9ede78b5e9e7e279d2693e15e73c93d006d9199efb89d'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '273176cfdb2861ac50e66c97c34732200792dcbb60914b14655127fe8d1b54c3'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
