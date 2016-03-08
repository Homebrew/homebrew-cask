cask 'charles' do
  version '3.11.4'
  sha256 '82195ef507dd7d3921d24dd787c51704e2cd9cb559f55e975b089ab3c7e7bfeb'

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
