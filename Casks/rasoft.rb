cask 'rasoft' do
  version '3.8.62'
  sha256 '6a17d2a1bfe6a77b30621b295d8a8918492916450867214cd0fe495819868a1d'

  url "https://rasoftx.rakocontrols.com/rasoftx/development/Rasoft%20Pro-#{version}.dmg"
  appcast 'https://www.rakocontrols.com/support/software/'
  name 'Rasoft Pro'
  homepage 'https://www.rakocontrols.com/support/software/'

  app 'Rasoft Pro.app'

  uninstall_preflight do
    set_permissions "#{appdir}/Rasoft Pro.app", '0777'
  end
end
