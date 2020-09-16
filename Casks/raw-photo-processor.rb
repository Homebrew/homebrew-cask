cask "raw-photo-processor" do
  # Betas of this software are release quality: https://groups.google.com/d/msg/raw-photo-processor/PJyyP2JwIwI/dn3CFknuCwAJ
  version "1912Beta"
  sha256 "bf5e63a511ab63fbdd893f0e38ec894267a430110885aec44c748364c69d24e8"

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  appcast "https://groups.google.com/forum/feed/raw-photo-processor/msgs/rss.xml?num=50"
  name "Raw Photo Processor"
  homepage "https://www.raw-photo-processor.com/RPP/Overview.html"

  app "Raw Photo Processor 64.app"
end
