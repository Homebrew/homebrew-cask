cask 'charles' do
  version '4.0'
  sha256 'ea337229361979e663109b7da8f71fbe3d0641606a852eb66a2eb98fd1af7d50'

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
