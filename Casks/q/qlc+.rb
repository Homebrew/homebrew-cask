cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "5.3.0"
  sha256 arm:   "edae14cbc2138e197296d1e4615631273bd0673af4ce97c885467f28f69d51ea",
         intel: "6067ef7c8310b3c670f21ed880d6f10b063ea9b161209352f1de10ebd8bf6dbd"

  on_arm do
    depends_on macos: :ventura
  end
  on_intel do
    depends_on macos: :monterey
  end

  url "https://www.qlcplus.org/downloads/#{version.split("-").first}/QLC+_#{version}_#{arch}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analogue lighting systems"
  homepage "https://www.qlcplus.org/"

  livecheck do
    url "https://www.qlcplus.org/download"
    regex(/href=.*?QLC\+[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
