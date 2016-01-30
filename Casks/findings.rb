cask 'findings' do
  version '1.3.2'
  sha256 '2e9eb603adeb4b05481ae25af300588a438970f7cd9fd43e3d0721de8b216801'

  url "http://downloads.findingsapp.com/Findings_#{version.sub(%r{^.*-}, '')}_#{version.sub(%r{-.*$}, '')}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: 'b3f02668f6b91ffb956f52de362e118e296aa0cd6486f8aa0195017fa5a878bb'
  name 'Findings'
  homepage 'http://findingsapp.com'
  license :freemium

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
