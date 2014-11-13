cask :v1 => 'hazel' do
  version :latest
  sha256 :no_check

  url 'http://www.noodlesoft.com/Products/Hazel/download'
  homepage 'http://www.noodlesoft.com/hazel.php'
  license :unknown

  prefpane 'Hazel.prefPane'
  zap :delete => [
                  '~/Library/Application Support/Hazel',
                  '~/Library/Preferences/com.noodlesoft.Hazel.plist',
                 ]
end
