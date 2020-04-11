cask 'macgdbp' do
  version '2.0.1'
  sha256 '6a096722b34a9c3a51f7c296432d438184e8937e19ecf15067b1bfa0e4b2fa0d'

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version}.zip"
  appcast 'https://www.bluestatic.org/versioncast.php/macgdbp'
  name 'MacGDBp'
  homepage 'https://www.bluestatic.org/software/macgdbp/'

  app 'MacGDBp.app'
end
