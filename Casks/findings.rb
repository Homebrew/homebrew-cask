cask 'findings' do
  version '1.3.3,3093'
  sha256 '0924704b55bf3f8d1cfbd140e623f462a88c412a33e74a01fd097495b5a29a73'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: 'a163483c3eb65697da6b1aa7018730c6e8a7aa0346c711823a853cb9fd8c1415'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
