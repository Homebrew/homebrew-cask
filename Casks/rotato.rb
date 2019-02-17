cask 'rotato' do
  version '50.1550354063'
  sha256 '7e44dfb4fd7202b529391771f7d5d5b5c07ae45be5e23ea1f465e621118cff06'

  # dl.devmate.com/com.mortenjust.Rendermock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml'
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  app 'Rotato.app'
end
