cask 'nucleo' do
  version '2.3.1'
  sha256 '33077671920dc6cd57fe1c4fb23e11dc96ba32ef7c6d42381e21ba2a5a466aa9'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates',
          checkpoint: 'c0fda658f91aee8c9b85f440ca9dcf1d4139a8bd30804cc80cea4ca17d38a23b'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
