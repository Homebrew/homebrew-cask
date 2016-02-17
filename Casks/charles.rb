cask 'charles' do
  version '3.11.3'
  sha256 '7ba8801a99ac4ab4ceda60106c381fbf206f4e94b45fe927341fa52a9e6246f5'

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
