cask 'charles' do
  version '3.11.5'
  sha256 'cf7ea19aa000f43fc71e48a41e3bbbc21eec35d7b6be11f5006a53ea16435edc'

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
