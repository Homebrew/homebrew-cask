cask :v1 => 'homestream' do
  version '1.1'
  sha256 '193dd9fb3488dfb754057b9c216e09fe2f0528b20a95bbe9b7d5f4b0556a4e2b'

  url "http://homestreamdownload.sony-europe.com/homestream-#{version}-osx.tar.gz"
  homepage 'http://www.sony.co.uk/hub/1237485339460'
  license :unknown    # todo: improve this machine-generated value

  app 'Homestream.app'
  app 'Homestream-Console.app'
end
