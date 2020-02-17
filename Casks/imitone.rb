cask 'imitone' do
  version '0.10.0b'
  sha256 'bd04abd9ab61c23eb0a94d0c1da0158f265d33462b6d5b6c71cd6a3a5ec21265'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
