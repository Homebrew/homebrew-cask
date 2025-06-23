cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "4.14.2"
  sha256 arm:   "17c6c595f661ec0ddd0184f6470a881e2fc1e47626bf3dd281b1359f61ae1552",
         intel: "246591c974a6965df6205c30195b5968f19bb5e9bf123e207d8efac4b1a8cdcc"

  url "https://qlcplus.org/downloads/#{version.split("-").first}/QLC+_#{version}_#{arch}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analogue lighting systems"
  homepage "https://qlcplus.org/"

  livecheck do
    url "https://qlcplus.org/download"
    regex(/href=.*?QLC\+[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
