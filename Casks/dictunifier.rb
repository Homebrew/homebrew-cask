cask 'dictunifier' do
  version '2.1'
  sha256 'ff80b354ebcbe7ddad0e01d64c667e6a026d92f6bac01d380ec009205679f14c'

  url "https://github.com/jjgod/mac-dictionary-kit/releases/download/v#{version}/DictUnifier-#{version}.zip"
  appcast 'https://github.com/jjgod/mac-dictionary-kit/releases.atom',
          checkpoint: '38b274e4f49f088b061cf84546fe403f8d1ca0e6cef025aa2b61426abb64f611'
  name 'DictUnifier'
  homepage 'https://github.com/jjgod/mac-dictionary-kit/'

  app 'DictUnifier.app'
end
