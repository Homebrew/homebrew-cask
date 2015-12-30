cask 'seamonkey' do
  version '2.39'
  sha256 '43bc6ad087242055db6ae6a3f14ef83729f4b455d7a2e10f7935a9304d84dcf8'

  # mozilla.org is the official download host per the vendor homepage
  url "https://download.mozilla.org/?product=seamonkey-#{version}&os=osx&lang=en-US"
  name 'SeaMonkey'
  homepage 'http://www.seamonkey-project.org/'
  license :oss

  app 'SeaMonkey.app'
end
