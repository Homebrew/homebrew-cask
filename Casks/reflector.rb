cask 'reflector' do
  version '2.5.4.0'
  sha256 '19164380fd3ed85e155ed7126bce197ce2d9e5acc31253000619a8373d8fa871'

  url "https://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml',
          checkpoint: '51e719d11b97a4e2d81f4f040e8777d7b40956ba5dac22f6bcee1d0ad5c74efe'
  name 'Reflector 2'
  homepage 'https://www.airsquirrels.com/reflector/'

  depends_on macos: '>= :mountain_lion'

  app 'Reflector 2.app'
end
