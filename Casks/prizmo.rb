cask "prizmo" do
  version "4.2.1,4.277.1372"
  sha256 "2666e4b0818e9383dd0ab1a721444021d116389d530808170e032fb43eea324e"

  url "https://creaceed.s3.amazonaws.com/downloads/prizmo#{version.major}_#{version.before_comma}.zip",
      verified: "creaceed.s3.amazonaws.com/downloads/"
  name "Prizmo"
  desc "Scanning application with Optical Character Recognition (OCR)"
  homepage "https://creaceed.com/prizmo"

  livecheck do
    url "https://creaceed.com/appcasts/prizmo#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prizmo.app"
end
