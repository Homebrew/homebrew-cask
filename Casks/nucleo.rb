cask 'nucleo' do
  version '2.3.0'
  sha256 '349a64f18a5a2dcf4f921b8c4a37203d2f8e24779581b0d2143a5eddde55e163'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates',
          checkpoint: 'b10761baf63c0587fff9b7878286d18119a16ddf9c041eba32a081b938560017'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
