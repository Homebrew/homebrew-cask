cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "4.14.3"
  sha256 arm:   "de6c1196f0ea69d1a344a3cc073aba3e74e31d097dbc9da599c916572bd52ddc",
         intel: "95c15f73e647e6b90cc11f5ebf24c55cebbbce427c711259405053e88fca29ee"

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
