cask 'swift-default-apps' do
  version '1.1.3'
  sha256 '240c97148580cca3ce256dd185346d1d31b36f4116c97273b3ab6a0d0f7d974b'

  url "https://github.com/Lord-Kamina/SwiftDefaultApps/releases/download/v#{version}/SwiftDefaultApps-v#{version}.zip"
  appcast 'https://github.com/Lord-Kamina/SwiftDefaultApps/releases.atom'
  name 'SwiftDefaultApps'
  homepage 'https://github.com/Lord-Kamina/SwiftDefaultApps'

  prefpane 'SwiftDefaultApps.prefPane'
end
