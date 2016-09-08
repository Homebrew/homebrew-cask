cask 'findings' do
  version '1.4,3453'
  sha256 '0b2fa90a3279a9472b9fc87d50553414ac68ac5585342e561d6dc91e32112df6'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '83411de53e31418c34f778d20de73efbb7d92f0a801c4e0f34ed586d2d04395f'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
