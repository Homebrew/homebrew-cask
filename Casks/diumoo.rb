cask 'diumoo' do
  version '1.5.0'
  sha256 'f6a6628dab6c64752f6827e453368c18dcd06962ee0823d51d51c439cf7e04b6'

  # github.com/shanzi/diumoo was verified as official when first introduced to the cask
  url "https://github.com/shanzi/diumoo/releases/download/v#{version}/diumoo.zip"
  appcast 'https://github.com/shanzi/diumoo/releases.atom',
          checkpoint: '3338de89c108cfa730279f37cf36779ba3e5cd088a2a62789259d01d9e6cf183'
  name 'diumoo'
  homepage 'http://diumoo.net/'

  app 'diumoo.app'
end
