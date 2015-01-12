cask :v1 => 'password-practice' do
  version :latest
  sha256 :no_check

  url 'https://mrgeckosmedia.com/applications/download/PasswordPractice'
  name 'Password Practice'
  homepage 'https://mrgeckosmedia.com/applications/info/PasswordPractice'
  license :public_domain

  app 'Password Practice.app'
end
