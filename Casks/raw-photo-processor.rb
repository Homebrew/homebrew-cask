cask "raw-photo-processor" do
  # Betas of this software are release quality: https://groups.google.com/d/msg/raw-photo-processor/PJyyP2JwIwI/dn3CFknuCwAJ
  version "1915Beta"
  sha256 "a621be34bc51a0072a132a852f4f562aae1a10fffbd2f701fd09931707262cdf"

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  appcast "https://groups.google.com/forum/feed/raw-photo-processor/msgs/rss.xml?num=50"
  name "Raw Photo Processor"
  homepage "https://www.raw-photo-processor.com/RPP/Overview.html"

  app "Raw Photo Processor 64.app"
end
