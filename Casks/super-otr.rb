cask 'super-otr' do
  version '0.9.6.0b79'
  sha256 '610d74c43d2fa38527b66fa677c6eff07543f8a853950160954e59cb251b066b'

  url "http://apfel-a.macbay.de/wordpress/wp-content/plugins/download-monitor/download.php?id=Super-OTR-#{version}.zip"
  appcast 'http://apfel-a.macbay.de/software/superotr/appcast-superotr.xml',
          :sha256 => 'd77a6f352c47713792161c4dadd7cec6b3f720989a215cdbf1930ff1b64bf46c'
  name 'Super OTR'
  homepage 'http://apfel-a.macbay.de/super-otr/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Super OTR.app'
end
