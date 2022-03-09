cask "raw-photo-processor" do
  # Betas of this software are release quality: https://groups.google.com/d/msg/raw-photo-processor/PJyyP2JwIwI/dn3CFknuCwAJ
  version "1927Beta"
  sha256 "8b7f5e9e3cefa2320ed9d1650f30ec1c56c54b40292a2b11f855b5036db245e3"

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
