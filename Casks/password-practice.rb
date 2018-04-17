cask 'password-practice' do
  version '0.1'
  sha256 '31a1707c44ed1f344535b592fb0f435ce3e6f707e3c58301147a95e68ebdff08'

  url 'https://mrgeckosmedia.com/applications/download/PasswordPractice'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/PasswordPractice',
          checkpoint: '70adba0f6fea264b35554c3a98010740d3c8afeb2e6a07a1d17050b746c1c481'
  name 'Password Practice'
  homepage 'https://mrgeckosmedia.com/applications/info/PasswordPractice'

  app 'Password Practice.app'
end
