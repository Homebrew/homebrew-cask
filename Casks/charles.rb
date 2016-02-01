cask 'charles' do
  version '3.11.2'
  sha256 'db0a7d9c318ed239bc3d32a96f73ebba80e75cd31954179be42019222ae6557d'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/'
  license :commercial

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end
