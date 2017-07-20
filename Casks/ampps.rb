cask 'ampps' do
  version '3.7'
  sha256 '62270b36bb45c9f6ec56e338e654c5a41b067a877d7c1f0b67e0af80ae37dd07'

  url "http://files.ampps.com/AMPPS-#{version}.dmg"
  name 'AMPPS'
  homepage 'https://www.ampps.com/'

  suite 'AMPPS'

  uninstall_preflight do
    set_permissions "#{appdir}/AMPPS", '0777'
  end
end
