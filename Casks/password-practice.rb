cask 'password-practice' do
  version :latest
  sha256 :no_check

  url 'https://mrgeckosmedia.com/applications/download/PasswordPractice'
  appcast 'https://mrgeckosmedia.com/applications/appcast/PasswordPractice',
          :sha256 => '604d9a0939d7a8cadce346a58972c9dbef64ed00e6394faa4d8f7a0e6bd876d6'
  name 'Password Practice'
  homepage 'https://mrgeckosmedia.com/applications/info/PasswordPractice'
  license :public_domain

  app 'Password Practice.app'
end
