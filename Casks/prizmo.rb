cask "prizmo" do
  version "4.2,4.277.1371"
  sha256 "32ca7151fa58b77f1defa547af9c752bc9b94f9444756ec83bace700f86be7c8"

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
  depends_on macos: ">= :yosemite"

  app "Prizmo.app"
end
