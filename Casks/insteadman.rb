cask 'insteadman' do
  version '3.1.2'
  sha256 '9307ac274c8550420116cc15eea1d7923ea0c7e1d8ac5cff098aaf528edc6894'

  # github.com/jhekasoft/insteadman3 was verified as official when first introduced to the cask
  url "https://github.com/jhekasoft/insteadman3/releases/download/v#{version}/InsteadMan-#{version}.dmg"
  appcast 'https://github.com/jhekasoft/insteadman3/releases.atom'
  name 'InsteadMan'
  homepage 'https://jhekasoft.github.io/insteadman/en/'

  app 'InsteadMan.app'
end
