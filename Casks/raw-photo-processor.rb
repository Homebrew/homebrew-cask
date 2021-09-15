cask "raw-photo-processor" do
  # Betas of this software are release quality: https://groups.google.com/d/msg/raw-photo-processor/PJyyP2JwIwI/dn3CFknuCwAJ
  version "1922Beta"
  sha256 "8409146cecf9541d2b7a66c1dfc67f32f1197accb5ef3874055e92f71bd056e9"

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  appcast "https://groups.google.com/forum/feed/raw-photo-processor/msgs/rss.xml?num=50"
  name "Raw Photo Processor"
  desc "Process raw photos"
  homepage "https://www.raw-photo-processor.com/RPP/Overview.html"

  app "Raw Photo Processor 64.app"
end
