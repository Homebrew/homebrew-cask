cask "prizmo" do
  version "4.1,4.276.2226"
  sha256 "ec6e8d70f604efa17b9380ef1e45b4ee93d232f7942098192a27a6e35d2501d6"

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
