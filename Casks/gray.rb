cask 'gray' do
  version '0.9.11'
  sha256 'f01d31eb9ed6b003dbb87455da4fd0330ca034affe8adddd4098a42ca2a1da6a'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
