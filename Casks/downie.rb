cask 'downie' do
  version '2.9.12,1530'
  sha256 '832ba36cafaf8757a1cd6f9d5c89ff22a9dd5f9f4b9a5b9cee2b735ef09c1505'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: '88e681ee32f24ec2298d4754e7ece00dc102b81e140e277638a30e9de8c60345'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
