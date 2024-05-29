cask "raw-photo-processor" do
  # Betas of this software are release quality: https://groups.google.com/d/msg/raw-photo-processor/PJyyP2JwIwI/dn3CFknuCwAJ
  version "1949Beta"
  sha256 "12f2a9f31df5b797fc483ba821981aa58e6503c209537c5b126eb554e988cf49"

  url "https://www.raw-photo-processor.com/RPP/RPP64_#{version}.zip"
  name "Raw Photo Processor"
  desc "Process raw photos"
  homepage "https://www.raw-photo-processor.com/RPP/Overview.html"

  livecheck do
    # New releases are posted in upstream's Google Group
    # The RSS feed is no longer available as deprecated by Google
    # https://groups.google.com/g/raw-photo-processor
    skip "No version information available"
  end

  app "Raw Photo Processor 64.app"
end
