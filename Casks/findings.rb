cask 'findings' do
  version '1.3.4,3125'
  sha256 '6e7baddf6e99955cb4b9a7ccb028a753bf203ec81d20fe69d2008596020452d8'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '73fded1032d1c910eecab85202e18f9e6353eef85774c76ec9bfb04cfc5235e2'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
