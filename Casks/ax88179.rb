cask :v1 => 'ax88179' do
  version '2.4.0_20141226'
  sha256 '4de36d86600eef8374fa3161ee7a98980ab5faac47e4f3fbcdc9573af6975b97'

  module Utils
    def self.basename
      "AX88179_178A_Macintosh_10.6_to_10.10_Driver_Installer_v#{Module.nesting.last.version}"
    end
  end

  url "http://www.asix.com.tw/FrootAttach/driver/#{Utils.basename}.zip"
  name 'AX88179'
  homepage 'http://www.asix.com.tw/products.php?op=pItemdetail&PItemID=131;71;112&PLine=71'
  license :gratis

  container :nested => "#{Utils.basename}/AX88179_178A.dmg"
  pkg "AX88179_178A_v#{version[0..-10]}.pkg"

  uninstall :script => { :executable => 'AX88179_178A_Uninstall_v140' }
end
