cask 'ivideonclient' do
  version '6.8.2'
  sha256 'e5f66164183c1375797f602228f75b798403d186cc224afd53885b539e0f6de3'

  # updates.iv-cdn.com/ was verified as official when first introduced to the cask
  url "https://updates.iv-cdn.com/bundles/ivideon_client/#{version}/IvideonClient_#{version}_macosx-x86-64.dmg"
  appcast 'https://www.ivideon.com/downloads/'
  name 'Ivideon Client'
  homepage 'https://www.ivideon.com/'

  app 'IvideonClient.app'
end
