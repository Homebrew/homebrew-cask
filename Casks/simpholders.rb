cask 'simpholders' do
  version '3.0.2,2193'
  sha256 'dad98153c02153591d67b45af06021fe9481fbf6eba0f42e8cfb7b0ea9288583'

  url "https://simpholders.com/site/assets/files/#{version.after_comma}/simpholders_#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/releases/'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  app 'SimPholders.app'
end
