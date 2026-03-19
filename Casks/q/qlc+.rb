cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "5.2.1"
  sha256 arm:   "c29b60d5fb23607b9ee7f13fb681e66adb8b84138214567521c6f267db982cf4",
         intel: "642f61ba6322a3199d2664a60e9df4a947cf1ce5d42d37ef34e1b3ac95b488df"

  url "https://www.qlcplus.org/downloads/#{version.split("-").first}/QLC+_#{version}_#{arch}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analogue lighting systems"
  homepage "https://www.qlcplus.org/"

  livecheck do
    url "https://www.qlcplus.org/download"
    regex(/href=.*?QLC\+[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
