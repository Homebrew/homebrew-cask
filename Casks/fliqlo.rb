cask 'fliqlo' do
  version '1.7.2'
  sha256 '2a771c758dc091a6ecaf498fb79eff8c94573452c88e39073a46d7da8b3b5b8b'

  url "https://fliqlo.com/download/fliqlo_#{version.no_dots}.dmg",
      referer: 'https://fliqlo.com/#about'
  appcast 'https://fliqlo.com/changelog.txt'
  name 'Fliqlo'
  homepage 'https://fliqlo.com/'

  screen_saver 'Fliqlo.saver'
end
