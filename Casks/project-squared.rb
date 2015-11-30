cask :v1 => 'project-squared' do
  version :latest
  sha256 :no_check

  url 'https://download.projectsquared.com/mac/squared-osx64.pkg'
  appcast 'https://download.projectsquared.com/mac/versions.xml'
  name 'Project Squared'
  homepage 'http://www.webex.com/projectsquared/'
  license :gratis
  tags :vendor => 'Cisco Systems'

  pkg 'squared-osx64.pkg'

  uninstall :pkgutil => 'Project Squared',
            :delete => '/Applications/Project Squared.app'

  zap :delete => [
                   '~/Library/Preferences/Cisco-Systems.Project-Squared.plist',
                   '~/Library/Caches/Cisco-Systems.Project-Squared',
                   '~/Library/Logs/Project Squared',
                  ]
end
