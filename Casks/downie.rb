cask 'downie' do
  version '2.9.7,1515'
  sha256 '3f0d9a8651a49d4a026d6c0c0493625bca3bbfe1ab41e30a946723a5d7224b74'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: 'b162072402fcd0ca248aca55d0d49faa1b3b20a0a0d3f0e3b69017b1bd6880c0'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
