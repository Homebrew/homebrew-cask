cask 'neofinder' do
  version '6.9.3'
  sha256 '50f7148261298413a3249d6f1eb4d677346fd1ab2252301927b043e2ef875e1e'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: 'dc7200a0207418ba7148ae3cff37fa3decd70bd911ce2f95c30cfd53ce484cdf'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'

  app 'NeoFinder.app'
end
