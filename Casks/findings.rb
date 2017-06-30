cask 'findings' do
  version '1.4.5,3581'
  sha256 '43fc8cbf8689773348343cd3d30163c77a21ca0aea24122007b39aacf6da1684'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '85085abc8aaef1933f800fae148ab8b36e53b10294a709711b9a6b0637fc907d'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
