cask 'findings' do
  version '1.4.3,3551'
  sha256 '9b44ffc10cb8965ce82b44bd410ab34cc96bc520d08911697a1bf5ff3e0596e7'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '646190d33cc190feaf35a2d7fdfedc60690f8423d2b287add00676222391d0af'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
