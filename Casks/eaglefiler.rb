cask :v1 => 'eaglefiler' do
  version '1.6.3'
  sha256 '7ef8a5e1982734fdbbf751de2cf6167c74d3e76fbef841c64b75f430b1d8d7ce'

  url "http://c-command.com/downloads/EagleFiler-#{version}.dmg"
  homepage 'http://c-command.com/eaglefiler/'
  license :unknown    # todo: improve this machine-generated value

  app 'EagleFiler.app'
end
