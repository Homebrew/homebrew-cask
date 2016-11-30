cask 'findings' do
  version '1.4.2,3539'
  sha256 'a85915da38ac0d1d835083f4908ee39b69895c36e1ed8650fb1d65db09abe63a'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: '51548c6d2506ba1413967c96f183853facfef0cf4369fab6e069948340653397'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
