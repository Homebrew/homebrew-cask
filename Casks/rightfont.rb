cask 'rightfont' do
  version '4.7'
  sha256 'c0c840c1051f989ff1358b837eaa7024c6c58b4002bc63af14df42fba8b0b607'

  url "https://rightfontapp.com/downloads/#{version}/rightfont.zip"
  appcast 'https://rightfontapp.com/update/appcast.xml',
          checkpoint: '49e26808461d09d6d219deebddf75b9d1eb6620903cc3cc31d87f28806a8e7dd'
  name 'RightFont'
  homepage 'https://rightfontapp.com/'

  depends_on macos: '>= :yosemite'

  app 'RightFont.app'
end
