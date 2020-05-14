cask 'maltego' do
  version '4.2.9.12898'
  sha256 'a11167cfa3b6ae70bc539dbcc89f70fa44a2aa6690f054b6f62d204c17ec9f5d'

  # maltego-downloads.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://maltego-downloads.s3.us-east-2.amazonaws.com/mac/Maltego.v#{version}.dmg"
  appcast 'https://maltego-downloads.s3.us-east-2.amazonaws.com/info.json'
  name 'Maltego'
  homepage 'https://www.maltego.com/pricing-plans/'

  app 'Maltego.app'

  zap trash: '~/Library/Application Support/maltego'

  caveats do
    depends_on_java '8'
  end
end
