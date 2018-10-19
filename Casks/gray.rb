cask 'gray' do
  version '0.9.2'
  sha256 'f10dc327f364e0a8e4ea523181590a97976b3be19685b04d26fd6eb75e1d9fdd'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  app 'Gray.app'
end
