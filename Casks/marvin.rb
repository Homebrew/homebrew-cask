cask 'marvin' do
  version '1.41.0'
  sha256 'fec35702dd416e344dbe8ca3be692c837fcba4475f3e9637838563f9c165a574'

  # s3.amazonaws.com/amazingmarvin was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/amazingmarvin/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
