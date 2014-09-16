class Hazel < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.noodlesoft.com/Products/Hazel/download'
  homepage 'http://www.noodlesoft.com/hazel.php'

  prefpane 'Hazel.prefPane'
  zap :files => [
                 '~/Library/Application Support/Hazel',
                 '~/Library/Preferences/com.noodlesoft.Hazel.plist',
                ]
end
