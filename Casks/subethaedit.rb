cask 'subethaedit' do
  version :latest
  sha256 :no_check

  url 'https://subethaedit.net/SubEthaEdit.zip'
  appcast 'https://github.com/subethaedit/SubEthaEdit/releases.atom'
  name 'SubEthaEdit'
  homepage 'https://subethaedit.net/'

  app 'SubEthaEdit.app'
end
