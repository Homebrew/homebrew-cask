cask :v1 => 'daemon-tools-lite' do
  version '2.1'
  sha256 '7b4ec2ac2faceedd16b339647aceae19d428fa20afc145e06fbe8eb38148f803'

  url 'http://mirror12.soft24.com/getfile.php?p=http://eu-uk1.disc-tools.com/caa3ba4c7bd8c0bdc1b64cb83b2283cf/DAEMONToolsLite-2-1-64.dmg'
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          :sha256 => 'b4b3096744ad084a0a016a248cafee02670f4773fe29131ae50ddacaaf601b3d'
  homepage 'http://www.daemon-tools.cc/products/dtMacLite'
  license :unknown

  app 'DAEMON Tools Lite.app'
end
