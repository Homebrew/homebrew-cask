cask :v1 => 'seamonkey' do
  version '2.38'
  sha256 'e5ef6fc35e476068239a96f0357f4ea3faeae80e175c48994fd898000066b232'

  # mozilla.org is the official download host per the vendor homepage
  url "https://download.mozilla.org/?product=seamonkey-#{version}&os=osx&lang=en-US"
  name 'SeaMonkey'
  homepage 'http://www.seamonkey-project.org/'
  license :oss

  app 'SeaMonkey.app'
end
