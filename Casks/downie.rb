cask 'downie' do
  version '2.8,1455'
  sha256 'c6a7a247f804ebe7ead0fb77d5412596d928b61126563a3d5fbe65367975a36e'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '39d946b861ff1a1d929908c6c26c81558002a0f10a50d36b71d87a46ec804b78'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
