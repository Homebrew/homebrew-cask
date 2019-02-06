cask 'hashbackup' do
  version '2139'
  sha256 '5ec250626344df5e56619b3c93d1964b93aefdf77de7731cef300dd6b617348c'

  url "http://www.hashbackup.com/download/hb-#{version}-mac-64bit.tar.gz"
  name 'hashbackup'
  homepage 'http://www.hashbackup.com/'

  binary "hb-#{version}/hb"
end
