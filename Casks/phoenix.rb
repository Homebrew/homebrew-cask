cask 'phoenix' do
  version '2.2'
  sha256 '79f351dbec3c7424bfb9cef2c91984ffb59ab4b31f1e4444f05aeea2949a7d1d'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: '8bc3e97c343e94f052da451ad9f0292d083317a5c6f7060ccd151c9fafe6948c'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'
  license :mit

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap delete: [
                '~/.phoenix.js',
                '~/Library/Application Support/Phoenix/storage.json',
              ]
end
