cask :v1 => 'password-practice' do
  version :latest
  sha256 :no_check

  url 'https://mrgeckosmedia.com/applications/download/PasswordPractice'
  homepage 'https://mrgeckosmedia.com/applications/info/PasswordPractice'
  license :unknown    # todo: improve this machine-generated value

  app 'Password Practice.app'
end
