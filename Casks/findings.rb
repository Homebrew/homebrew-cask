cask 'findings' do
  version '1.4.5,3581'
  sha256 '43fc8cbf8689773348343cd3d30163c77a21ca0aea24122007b39aacf6da1684'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '88b9b5a9fb9d8c50fdb668f279d7aff1d00b1caf30b9585894c6b6e497cb10f2'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
