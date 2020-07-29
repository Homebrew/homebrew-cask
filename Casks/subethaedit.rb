cask 'subethaedit' do
  version '5.1.3'
  sha256 '2d3a943bf4ac114852929334cbc8789d9891de54cf1b3ff0eff5ba3dafd4c7fc'

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast 'https://subethaedit.net/appcast.xml'
  name 'SubEthaEdit'
  homepage 'https://subethaedit.net/'

  depends_on macos: '>= :high_sierra'

  app 'SubEthaEdit.app'
end
