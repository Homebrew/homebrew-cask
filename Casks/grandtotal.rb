cask 'grandtotal' do
  version '4.4.1'
  sha256 'cf6170abd31413caa3de6eda6393abd576451c54a8eefbcce9df29f600ff4df0'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '974060b77e320be579beebe3b9de7b42d0ede2d01c653a5e69ea44eb30eb81a2'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
