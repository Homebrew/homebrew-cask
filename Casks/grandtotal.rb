cask 'grandtotal' do
  version '5.1.4'
  sha256 'e76ee2f2d73c0d89276f525106ddf9be7f60b1a0824e90b01a1bdaf3942565e6'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '71a8a512a3dcfbe13db2652050c02f894560198ce426cffe2f1c3333e71b4183'
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
