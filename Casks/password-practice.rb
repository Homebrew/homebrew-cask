cask 'password-practice' do
  version '0.1'
  sha256 '31a1707c44ed1f344535b592fb0f435ce3e6f707e3c58301147a95e68ebdff08'

  url 'https://mrgeckosmedia.com/applications/download/PasswordPractice'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/PasswordPractice',
          checkpoint: 'b203acfca9fc92751c37696198b7af8606047f2cbae6dabb19aefb4ff846ad54'
  name 'Password Practice'
  homepage 'https://mrgeckosmedia.com/applications/info/PasswordPractice'

  app 'Password Practice.app'
end
