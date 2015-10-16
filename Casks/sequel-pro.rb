cask :v1 => 'sequel-pro' do
  version '1.1'
  sha256 'dfefd39b64a78084db88210e2ea365effbaeb8903173f3dfd55b60421ee461fa'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sequelpro/sequelpro/releases/download/release-#{version}/sequel-pro-#{version}.dmg"
  appcast 'http://www.sequelpro.com/appcast/app-releases.xml',
          :sha256 => 'd6137595bccddd81edfb3a07a82b4ed818b8b1af79750397f929bf74b91d3e32'
  name 'Sequel Pro'
  homepage 'http://www.sequelpro.com/'
  license :mit

  depends_on :macos => '>= :leopard'

  app 'Sequel Pro.app'

  zap :delete => '~/Library/Application Support/Sequel Pro/Data'
end
