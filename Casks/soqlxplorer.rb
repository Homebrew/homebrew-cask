cask 'soqlxplorer' do
  version '3.2'
  sha256 '66103063a180c1c44e42a9c185cc04b38d8e48db752d58f9cd69cf287e86420a'

  url "https://www.pocketsoap.com/osx/soqlx/SoqlXplorer_v#{version}.zip"
  appcast 'https://www.pocketsoap.com/osx/soqlx/appcast.xml'
  name 'SoqlXplorer'
  homepage 'https://www.pocketsoap.com/osx/soqlx/'

  depends_on macos: '>= :high_sierra'

  app 'SoqlXplorer.app'
end
