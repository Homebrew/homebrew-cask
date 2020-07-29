cask 'maltego' do
  version '4.2.10.13007'
  sha256 '4402096d851baee4cadbc9eca5fec63a45b179d531d13105cba7ccaf40b08ef0'

  # maltego-downloads.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://maltego-downloads.s3.us-east-2.amazonaws.com/mac/Maltego.v#{version}.dmg"
  appcast 'https://maltego-downloads.s3.us-east-2.amazonaws.com/info.json'
  name 'Maltego'
  homepage 'https://www.maltego.com/pricing-plans/'

  app 'Maltego.app'

  zap trash: '~/Library/Application Support/maltego'

  caveats do
    depends_on_java '11'
  end
end
