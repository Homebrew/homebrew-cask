cask 'macgdbp' do
  version '2.0.2'
  sha256 '438ea8cdbc4fc35b6cc80888e27a4e290f8c7023decc155227eed373ff2d0cfe'

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version}.zip"
  appcast 'https://www.bluestatic.org/versioncast.php/macgdbp'
  name 'MacGDBp'
  homepage 'https://www.bluestatic.org/software/macgdbp/'

  app 'MacGDBp.app'
end
