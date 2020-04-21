cask 'gearsystem' do
  version '3.0.2'
  sha256 '23559909818aaa99f8e1d87cc944583bd9ffaa8ad77a1e2f6a284a465700ee4f'

  url "https://github.com/drhelius/Gearsystem/releases/download/gearsystem-#{version}/Gearsystem-#{version}-macOS.zip"
  appcast 'https://github.com/drhelius/Gearsystem/releases.atom'
  name 'Gearsystem'
  homepage 'https://github.com/drhelius/Gearsystem'

  app "Gearsystem-#{version}-macOS/Gearsystem.app"
end
