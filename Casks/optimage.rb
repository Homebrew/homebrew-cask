cask 'optimage' do
  version '1.2.0'
  sha256 '8a9a73fc83f5968cd0bcc0d7398e842c023fc85e157f5f9fdf487c1c97560cb9'

  url 'https://getoptimage.com/download/optimage-mac.zip'
  appcast 'https://getoptimage.com/appcast.xml',
          checkpoint: '6ecfe4093d9b1e315299c1c2031804c775a22f108100bf521deb2a3a66ebd12f'
  name 'Optimage'
  homepage 'https://getoptimage.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Optimage.app'
end
