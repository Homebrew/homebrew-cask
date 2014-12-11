cask :v1 => 'srware-iron' do
  version :latest
  sha256 :no_check

  url 'http://www.srware.net/downloads/iron-mac64.zip'
  homepage 'http://www.srware.net/en/software_srware_iron.php'
  license :unknown    # todo: improve this machine-generated value

  # Renamed for clarity: app name is inconsistent with its branding.
  app 'Chromium.app' , :target => 'SRWare Iron.app'
end
