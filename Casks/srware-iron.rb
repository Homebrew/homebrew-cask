cask 'srware-iron' do
  version :latest
  sha256 :no_check

  url 'https://www.srware.net/downloads/iron-mac64.zip'
  name 'SRWare SRWare Iron'
  homepage 'https://www.srware.net/en/software_srware_iron.php'

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'iron-mac64/Chromium.app', target: 'SRWare Iron.app'
end
