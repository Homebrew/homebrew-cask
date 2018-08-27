cask 'paste' do
  version '2.3.9,23'
  sha256 '419d857c5d34bf1fc6840fb27eb9cd270900cb08a5af9c8ae38291d03fee1c3b'

  # rink.hockeyapp.net/api/2/apps/f44b38c5d9824344acdb920513bbbf8f was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/f44b38c5d9824344acdb920513bbbf8f/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/f44b38c5d9824344acdb920513bbbf8f'
  name 'Paste'
  homepage 'https://pasteapp.me/'

  app 'Paste.app'
end
