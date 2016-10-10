cask 'birdfont' do
  version '2.16.6'
  sha256 '50edf0df45f8fe8c7d6f8aa52e74ea76c9ffdc092baea5a4ee38a876bc96616b'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFont.app'
end
