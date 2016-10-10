cask 'findings' do
  version '1.4.1,3468'
  sha256 '620a4fdf08cf31f1ba17e1fb4d941000834d38e3a72f5621bfbf90ca705b39cd'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '03d2cbcf088818ad76fe749a5b87ec4d1231482593ea42020842034832a43ce5'
  name 'Findings'
  homepage 'http://findingsapp.com'

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
