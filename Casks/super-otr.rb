cask 'super-otr' do
  version '0.9.6.0b79'
  sha256 '610d74c43d2fa38527b66fa677c6eff07543f8a853950160954e59cb251b066b'

  url "http://apfel-a.macbay.de/wordpress/wp-content/plugins/download-monitor/download.php?id=Super-OTR-#{version}.zip"
  appcast 'http://apfel-a.macbay.de/software/superotr/appcast-superotr.xml',
          checkpoint: 'e6b1c672d73b888eb2a8533258b7c8b9dcb093d92c55ac5adc84838edb2b33ab'
  name 'Super OTR'
  homepage 'http://apfel-a.macbay.de/super-otr/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Super OTR.app'
end
