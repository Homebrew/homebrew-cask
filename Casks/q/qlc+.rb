cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.0.1"
    sha256 "00bab5cd80f3140cc981be72f3d0ad092f30436931e223955255d0a36205b254"

    livecheck do
      url "https://www.qlcplus.org/download"
      regex(/href=.*?QLC\+[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
    end

    depends_on macos: ">= :monterey"
  end
  on_intel do
    version "4.14.3"
    sha256 "95c15f73e647e6b90cc11f5ebf24c55cebbbce427c711259405053e88fca29ee"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :catalina"
  end

  url "https://www.qlcplus.org/downloads/#{version.split("-").first}/QLC+_#{version}_#{arch}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analogue lighting systems"
  homepage "https://www.qlcplus.org/"

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
