cask 'skadi' do
  version '1.0.0'
  sha256 '26c08d7061bbca81bb8f23d83563465ae92422d51d2d63b73d20ad945a43b1d4'

  url "https://github.com/redcapital/skadi/releases/download/v#{version}/skadi-v#{version}.zip"
  appcast 'https://github.com/redcapital/skadi/releases.atom',
          :sha256 => 'b00910f5e8c35f0a86770fe939be395d38e2d59375882d7d52e240abfcb6d829'
  name 'skadi'
  homepage 'https://github.com/redcapital/skadi'
  license :gpl

  app 'skadi.app'
end
