cask 'reflector' do
  version '2.5.1'
  sha256 'de2ccf9612cb49fb7ef3870611ab0c63abc2df750c0f5f5b7183c407b2faae3e'

  url "https://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml',
          checkpoint: '7df2adb37396c4abb61918bae56e48a7d4daa89a2e95bb7e38682b53a839cf38'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Reflector 2.app'
end
