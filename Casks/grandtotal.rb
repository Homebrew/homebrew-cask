cask 'grandtotal' do
  version '4.2.5'
  sha256 '1d090aa3113b9eda07a015311fa5ce4519b58662aebbb029d86e2f9b70044697'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '6868ecc7c06324327f66cb2a5ff28ca3cef67b1ef15cae440584bfbfd190653e'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
