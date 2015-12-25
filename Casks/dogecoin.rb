cask 'dogecoin' do
  version '1.8.2'
  sha256 'bdbdfabf5442a179b41936731d85ece9a2970cea80b106f5267911a0de4ddac2'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-mac.zip"
  appcast 'https://github.com/dogecoin/dogecoin/releases.atom',
          :sha256 => '923082b8afd4c19e09046f62bb26a4e8c7cf27241eebdb8016ab3762a7e0468a'
  name 'Dogecoin'
  homepage 'http://dogecoin.com/'
  license :mit

  app 'Dogecoin-Qt.app'
end
