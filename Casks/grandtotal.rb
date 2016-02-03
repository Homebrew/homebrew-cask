cask 'grandtotal' do
  version '4.1.5'
  sha256 '743cc137ab369c8f214fab85753f5b4b0e75a7e82a90995dbfc51e7ff0270a70'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          checkpoint: '2ad2d018d5f19091c0dd9d6d6f3cbe0eb033ab2dcc8cbfc044d9bf75d33d4859'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
