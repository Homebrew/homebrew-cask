cask 'rasoft' do
  version '3.8.62'
  sha256 '6a17d2a1bfe6a77b30621b295d8a8918492916450867214cd0fe495819868a1d'

  url "https://rasoftx.rakocontrols.com/rasoftx/development/Rasoft%20Pro-#{version}.dmg"
  appcast 'https://www.rakocontrols.com/support/software/',
          checkpoint: 'c2124c7935c9d82a5366a5fb7a5025afdc2918b31008d076b32aef25bd85d88b'
  name 'Rasoft Pro'
  homepage 'https://www.rakocontrols.com/support/software/'

  app 'Rasoft Pro.app'

  uninstall_preflight do
    set_permissions "#{appdir}/Rasoft Pro.app", '0777'
  end
end
