cask 'amadine' do
  version '1.0.3'
  sha256 'b294621713bb3c0bdee82e50e97c2a82a5502bff3e7e3a4cfddb28f76c754288'

  # belightsoft.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://belightsoft.s3.amazonaws.com/Amadine.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_Amadine.xml'
  name 'Amadine'
  homepage 'https://amadine.com/'

  depends_on macos: '>= :sierra'

  app 'Amadine.app'
end
