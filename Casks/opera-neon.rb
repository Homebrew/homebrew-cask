cask 'opera-neon' do
  version :latest
  sha256 :no_check

  url 'https://get.geo.opera.com/.private/OperaNeon.dmg'
  name 'Opera Neon'
  homepage 'https://www.opera.com/computer/neon'

  app 'Opera Neon.app'
end
