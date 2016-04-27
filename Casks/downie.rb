cask 'downie' do
  version '2.3.1214'
  sha256 '2687bbf3ee4b2a06c7d9d5f27051edeb24c8e9c63124f2552cbd12d6089b7bba'

  url "http://trial.charliemonroe.net/downie/Downie_#{version.patch}.zip"
  appcast "http://trial.charliemonroe.net/downie/updates_#{version.major_minor}.xml",
          checkpoint: '83b02b483db784313f75d65f808f426194726856a44a7ec4e065eee1ad2fc6fa'
  name 'Downie'
  homepage 'http://software.charliemonroe.net/downie.php'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
