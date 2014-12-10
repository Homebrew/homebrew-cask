cask :v1 => 'sophos-anti-virus-home-edition' do
  version '9.0'
  sha256 '86bcd0a10de1dc2455f3f1e9330c0b083e30ce435822daaa7ea10f04f63f5f10'

  url "http://downloads.sophos.com/home-edition/savosx_#{version.gsub('.','')}_he.zip"
  homepage 'http://www.sophos.com/en-us/products/free-tools/sophos-antivirus-for-mac-home-edition.aspx/'
  license :unknown    # todo: improve this machine-generated value

  app 'Sophos Anti-Virus Home Edition.app'
end
