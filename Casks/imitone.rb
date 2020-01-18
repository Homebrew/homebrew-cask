cask 'imitone' do
  version '0.10.0'
  sha256 '25216b932aa2b985a3387cacd3abf679ddc3ebdf83574abf3e3dd84c1789ed98'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
