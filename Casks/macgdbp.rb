cask 'macgdbp' do
  version '2.0'
  sha256 'c9b7dedab6b011023374f6412906455a707ad2f7fa07dc101b6545e441f945b1'

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version}.zip"
  appcast 'https://www.bluestatic.org/versioncast.php/macgdbp'
  name 'MacGDBp'
  homepage 'https://www.bluestatic.org/software/macgdbp/'

  app 'MacGDBp.app'
end
