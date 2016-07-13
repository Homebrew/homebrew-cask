cask 'phoenix' do
  version '2.2.1'
  sha256 '5249a136a5e4101552621b6945b397b4cfb7d36714546bbd6303d39cb59ba526'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: 'f8c4e57773d925a23aa5f1e47db215976d36680ad9525d89f9213790cea6e2be'
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
