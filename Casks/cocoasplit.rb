cask 'cocoasplit' do
  version '2.0.15'
  sha256 '4a25e84b9c2afcc92af6234e823baf2351b3ea50e87555328c244a7aefe99b57'

  url "https://www.cocoasplit.com/releases/#{version.major_minor}/CocoaSplit_#{version}.zip"
  name 'CocoaSplit'
  homepage 'https://www.cocoasplit.com/'

  app 'CocoaSplit.app'
end
