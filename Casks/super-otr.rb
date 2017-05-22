cask 'super-otr' do
  version '0.9.6.0b79'
  sha256 '610d74c43d2fa38527b66fa677c6eff07543f8a853950160954e59cb251b066b'

  url "http://apfel-a.macbay.de/wordpress/wp-content/plugins/download-monitor/download.php?id=Super-OTR-#{version}.zip"
  appcast 'http://apfel-a.macbay.de/software/superotr/appcast-superotr.xml',
          checkpoint: '51310c4edecab672b847b6c45e87f9c887fd4db4c2fda6c6389b516bf40f4bc2'
  name 'Super OTR'
  homepage 'http://apfel-a.macbay.de/super-otr/'

  app 'Super OTR.app'
end
