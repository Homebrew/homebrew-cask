cask 'macgdbp' do
  version '1.5'
  sha256 '90697835c77c0a294cea7aec62276fbf6920763968e5c77a0791199c7d718744'

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version}.zip"
  appcast 'https://www.bluestatic.org/versioncast.php/macgdbp',
          checkpoint: '6b192fff483beac1434de65890b412bc4f64fecd0c8eebf010975794c00cd697'
  name 'MacGDBp'
  homepage 'https://www.bluestatic.org/software/macgdbp/'

  app 'MacGDBp.app'
end
