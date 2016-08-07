cask 'findings' do
  version '1.3.5,3129'
  sha256 'e6944769e7efd3fc1cff76479a68d5b9d846d8022bca1976ba92ac05b365d217'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '3cbab46a1ad0f13b19e89f11ee0bf93a95007c3715cf90ba1039347c60306a57'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
