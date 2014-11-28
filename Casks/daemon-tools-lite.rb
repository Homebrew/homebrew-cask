cask :v1 => 'daemon-tools-lite' do
  version '2.3.114'
  sha256 '1f7b2491a98b1956fa3fc740e74113cee59d557ba8fa6e137027eab469cafc9e'

  # soft24.com is the official download host per the vendor homepage
  url "http://mirror11.soft24.com/getfile.php?p=http://eu-uk1.disc-tools.com/9050ed8fe21290f1ef8549f41fbabf09/DAEMONTools-#{version.gsub('.','-')}.dmg"
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          :sha256 => 'b4b3096744ad084a0a016a248cafee02670f4773fe29131ae50ddacaaf601b3d'
  homepage 'http://www.daemon-tools.cc/products/dtMacLite'
  license :unknown

  app 'DAEMON Tools Lite.app'
end
