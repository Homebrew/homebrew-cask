cask 'downie' do
  version '2.6.10,1440'
  sha256 'f05b84eea6110cf55992f7a35ce99869a1ea9fa4d7ef7f50fee8de2138442624'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '342f9333059e4a2e7f19b82baf1a5878671312b1d1c7dadb96a9dd28664e02b5'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
