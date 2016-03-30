cask 'grandtotal' do
  version '4.1.6'
  sha256 'e5999f32d16737d3867f1b22d6cba54f024c83cab0d96f82c2c8b2f0559dbb41'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          checkpoint: 'b8b71ca4299421dcca52aa4bb6dfe57d3e2886c29d0248eec5b6db86c82c32cd'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
