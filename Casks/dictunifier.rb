cask :v1 => 'dictunifier' do
  version '2.1'
  sha256 'ff80b354ebcbe7ddad0e01d64c667e6a026d92f6bac01d380ec009205679f14c'

  url "https://mac-dictionary-kit.googlecode.com/files/DictUnifier-#{version}.zip"
  homepage 'http://code.google.com/p/mac-dictionary-kit/'
  license :oss

  app 'DictUnifier.app'
end
