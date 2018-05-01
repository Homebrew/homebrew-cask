cask 'grandtotal' do
  version '5.1.3.4'
  sha256 '4d9393a646dd210e11c330c402ff697e5b82cb39273b1f6bd9590ea1e73ad858'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: 'cf8e2689b9a602b4cd1fb208419c35cbdb8e40c9a9fb13f78567e6373de29db4'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
