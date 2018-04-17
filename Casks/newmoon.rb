cask 'newmoon' do
  version '26.5.0-131'
  sha256 'cfb774a32ec323829a5a03fefd6a07fd9242d32856aee5c22bbfdf0d44abe8dd'

  url "https://mac.palemoon.org/dist/palemoon-#{version}-gstreamer.en-US.mac64.dmg"
  name 'Pale Moon'
  homepage 'https://www.palemoon.org/'

  app 'NewMoon.app'
end
