cask 'grandtotal' do
  version '4.1.6'
  sha256 'e5999f32d16737d3867f1b22d6cba54f024c83cab0d96f82c2c8b2f0559dbb41'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          checkpoint: 'e8ccc71638e5a4177a334d8c1a9a13c14f04382088f93e1e2dee2414560c0a7e'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
