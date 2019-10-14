cask 'subethaedit' do
  version '5.1.1'
  sha256 'a7dd83d16e212124a8100fa264671b1b4859660f2b0c7e8a4d828ab85d64e8e6'

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast 'https://subethaedit.net/appcast.xml'
  name 'SubEthaEdit'
  homepage 'https://subethaedit.net/'

  depends_on macos: '>= :high_sierra'

  app 'SubEthaEdit.app'
end
