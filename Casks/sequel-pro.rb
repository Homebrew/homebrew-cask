cask :v1 => 'sequel-pro' do
  version '1.1-RC2'
  sha256 '35224ab0f6f410ce06b18470a5e5918f97c91fa810371ea4686609bba51a22ea'

  # googlecode.com is the official download host per the vendor homepage
  # url "https://sequel-pro.googlecode.com/files/sequel-pro-#{version}.dmg"
  url 'https://github.com/sequelpro/sequelpro/releases/download/release-1.1-rc2/sequel-pro-1.1-RC2.dmg'
  appcast 'http://www.sequelpro.com/appcast/app-releases.xml',
          :sha256 => 'd6137595bccddd81edfb3a07a82b4ed818b8b1af79750397f929bf74b91d3e32'
  name 'Sequel Pro'
  homepage 'http://www.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
