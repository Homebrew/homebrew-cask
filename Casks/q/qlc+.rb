cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.0.0"
    sha256 "f42b26a1328ce4f6120c160c43e4aabd5a5f950fe662eb8b75f74c321d716288"

    livecheck do
      url "https://qlcplus.org/download"
      regex(/href=.*?QLC\+[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
    end
  end
  on_intel do
    version "4.14.3"
    sha256 "95c15f73e647e6b90cc11f5ebf24c55cebbbce427c711259405053e88fca29ee"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://qlcplus.org/downloads/#{version.split("-").first}/QLC+_#{version}_#{arch}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analogue lighting systems"
  homepage "https://qlcplus.org/"

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
