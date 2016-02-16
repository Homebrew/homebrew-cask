cask 'findings' do
  version '1.3.2,3077'
  sha256 'e76a1c67b0dfaf5807e45c2d0276385afb875612f2693b945cf1e97939b2256f'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: 'b3f02668f6b91ffb956f52de362e118e296aa0cd6486f8aa0195017fa5a878bb'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
