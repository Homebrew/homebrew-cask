cask 'subethaedit' do
  version '5.1.2'
  sha256 'bff2e4fcd47d1a2d6f5b9eefed0109136d07977ad31556b7c121e4c38b08a859'

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast 'https://subethaedit.net/appcast.xml'
  name 'SubEthaEdit'
  homepage 'https://subethaedit.net/'

  depends_on macos: '>= :high_sierra'

  app 'SubEthaEdit.app'
end
