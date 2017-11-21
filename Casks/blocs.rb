cask 'blocs' do
  version '2.4.5'
  sha256 '32c85caf6e9f66727d37515ba3063808e31821b9635b8ed77a92e163fbbcadca'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: '1155f6b4128f243fd46d2822a470acb91f0d8f9049bc8db8e9e7a78813bdcd2d'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
