cask 'marvin' do
  version '1.41.2'
  sha256 '92a9b94d93eae49e5cecb944a01ca4f3649e867e867b440ae568701c5c6ff180'

  # s3.amazonaws.com/amazingmarvin was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/amazingmarvin/Marvin-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
