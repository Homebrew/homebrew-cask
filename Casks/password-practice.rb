cask 'password-practice' do
  version :latest
  sha256 :no_check

  url 'https://mrgeckosmedia.com/applications/download/PasswordPractice'
  appcast 'https://mrgeckosmedia.com/applications/appcast/PasswordPractice',
          :checkpoint => '4097946482f11c223a744a99591604e0b8c5fdeecccf1b20c4fff6fcad213ace'
  name 'Password Practice'
  homepage 'https://mrgeckosmedia.com/applications/info/PasswordPractice'
  license :public_domain

  app 'Password Practice.app'
end
