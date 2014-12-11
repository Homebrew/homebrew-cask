cask :v1 => 'super-otr' do
  version '0.9.6.0b79'
  sha256 '610d74c43d2fa38527b66fa677c6eff07543f8a853950160954e59cb251b066b'

  url "http://apfel-a.macbay.de/wordpress/wp-content/plugins/download-monitor/download.php?id=Super-OTR-#{version}.zip"
  appcast 'http://apfel-a.macbay.de/software/superotr/appcast-superotr.xml',
          :sha256 => '191fa832fae581006bbc419d37acbb59121a3aefcdebefe0364a6f8e216bcca2'
  homepage 'http://apfel-a.macbay.de/super-otr/'
  license :unknown    # todo: improve this machine-generated value

  app 'Super OTR.app'
end
