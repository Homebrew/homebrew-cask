cask 'password-practice' do
  version '0.1'
  sha256 '31a1707c44ed1f344535b592fb0f435ce3e6f707e3c58301147a95e68ebdff08'

  url 'https://mrgeckosmedia.com/applications/download/PasswordPractice'
  appcast 'https://mrgeckosmedia.com/applications/appcast/PasswordPractice',
          checkpoint: '4097946482f11c223a744a99591604e0b8c5fdeecccf1b20c4fff6fcad213ace'
  name 'Password Practice'
  homepage 'https://mrgeckosmedia.com/applications/info/PasswordPractice'
  license :public_domain

  app 'Password Practice.app'
end
