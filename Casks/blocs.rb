cask 'blocs' do
  version '2.2.2'
  sha256 'bf90717419dd79edd3d6b18cdcc970c50d2110491b3abf4baadbacc7d430f917'

  # uistore.io was verified as official when first introduced to the cask
  url "http://downloads.uistore.io/blocs/version-#{version.major}/Blocs.zip"
  appcast "https://uistore.io/blocs/#{version.major}.0/info.xml",
          checkpoint: 'e3b76b5db084e39752548490c9f7a2f9567ff377a9d05a0ba5e20ce812e5c65c'
  name 'Blocs'
  homepage 'http://blocsapp.com/'

  auto_updates true

  app 'Blocs.app'
end
