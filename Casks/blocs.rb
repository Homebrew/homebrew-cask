cask 'blocs' do
  version '2.3.2'
  sha256 'c766c135dbe42a2900b66dc2f6e07e855f392fe35baf89b3af46d0000a6779f0'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: '5a471db8fc9e3eef22c4e23ba2daccb3a027677f71141224889c9259d68ca9f7'
  name 'Blocs'
  homepage 'https://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
