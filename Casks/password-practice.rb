cask :v1 => 'password-practice' do
  version :latest
  sha256 :no_check

  url 'https://mrgeckosmedia.com/applications/download/PasswordPractice'
  appcast 'https://mrgeckosmedia.com/applications/appcast/PasswordPractice',
          :sha256 => 'c5a7bbb1521e79e766a7fef4978bc1898df655964e724960b8a8f55bc3190f81'
  name 'Password Practice'
  homepage 'https://mrgeckosmedia.com/applications/info/PasswordPractice'
  license :public_domain

  app 'Password Practice.app'
end
