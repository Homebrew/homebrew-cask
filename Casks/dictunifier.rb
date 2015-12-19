cask 'dictunifier' do
  version '2.1'
  sha256 'ff80b354ebcbe7ddad0e01d64c667e6a026d92f6bac01d380ec009205679f14c'

  url "https://github.com/jjgod/mac-dictionary-kit/releases/download/v#{version}/DictUnifier-#{version}.zip"
  appcast 'https://github.com/jjgod/mac-dictionary-kit/releases.atom'
  name 'DictUnifier'
  homepage 'https://github.com/jjgod/mac-dictionary-kit/'
  license :oss

  app 'DictUnifier.app'
end
