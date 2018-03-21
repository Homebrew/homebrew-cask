cask 'blocs' do
  version '2.5.0'
  sha256 '5b9619925926c930efb60c0cbc40ddb5ccd127636cc7bdc0456b4907ad413d7e'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: '27d21a3b913b3fbd4a26edc34aa5d129ad6e47f6ccd118451ffc1d34340ade1d'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
