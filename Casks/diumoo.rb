cask 'diumoo' do
  version '1.5.0'
  sha256 'f6a6628dab6c64752f6827e453368c18dcd06962ee0823d51d51c439cf7e04b6'

  # diumoo has been open sourced by the author
  url 'https://github.com/shanzi/diumoo/releases/download/v#{version}/diumoo.zip'
  name 'diumoo'
  homepage 'http://diumoo.net/'
  license :gratis

  app 'diumoo.app'
end
