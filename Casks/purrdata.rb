cask 'purrdata' do
  version ':latest'
  sha256 'f11c122dcabfdec9acbfd78e4ca4654f6fe6fe61bb7e612d54825a0289908753'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url 'https://github.com/agraef/purr-data/releases/download/2.2.1/pd-l2ork-2.2.1-osx_10.8-amd64.dmg'
  name 'purrdata'
  homepage 'https://agraef.github.io/purr-data/'

  app 'pd-l2ork.app'
end
