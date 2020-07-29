cask 'raw-photo-processor' do
  # Betas of this software are release quality: https://groups.google.com/d/msg/raw-photo-processor/PJyyP2JwIwI/dn3CFknuCwAJ
  version '1904Beta'
  sha256 '9e18765aad727aede5563a7c81cb5c4630e41a058799566f16424e481b897465'

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  appcast 'https://groups.google.com/forum/feed/raw-photo-processor/msgs/rss.xml?num=50'
  name 'Raw Photo Processor'
  homepage 'https://www.raw-photo-processor.com/RPP/Overview.html'

  app 'Raw Photo Processor 64.app'
end
