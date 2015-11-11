cask :v1 => 'skadi' do
  version '1.0.0'
  sha256 '26c08d7061bbca81bb8f23d83563465ae92422d51d2d63b73d20ad945a43b1d4'

  url "https://github.com/galymzhan/skadi/releases/download/v#{version}/skadi-v#{version}.zip"
  appcast 'https://github.com/galymzhan/skadi/releases.atom'
  name 'skadi'
  homepage 'https://github.com/galymzhan/skadi'
  license :gpl

  app 'skadi.app'
end
