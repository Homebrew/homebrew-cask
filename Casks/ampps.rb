cask 'ampps' do
  version '3.9'
  sha256 'a9ec7d30c0ded5cebb54b0c185c9e0a5171a57dafb70781caf24c871c166f6f8'

  url "https://files.ampps.com/AMPPS-#{version}.dmg"
  appcast 'https://www.ampps.com/downloads'
  name 'AMPPS'
  homepage 'https://www.ampps.com/'

  suite 'AMPPS'

  uninstall_preflight do
    set_permissions "#{appdir}/AMPPS", '0777'
  end
end
