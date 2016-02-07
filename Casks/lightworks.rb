cask 'lightworks' do
  version '12.6.0'
  sha256 'b6d3a534063f12dba90beb63676d2e168facb95fead668b6f06b900c2cbf5279'

  url "https://www.lwks.com/dmpub/lightworks_v#{version}.dmg"
  name 'Lightworks'
  homepage 'https://www.lwks.com'
  license :freemium

  depends_on macos: '>= 10.8'

  app 'Lightworks.app'
end
