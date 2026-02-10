cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "5.2.0"
  sha256 arm:   "584e128836fb8295621a223d5f982313fb259dc22152e036faa16cefc3fbf3af",
         intel: "eef18652215e667582d4cc5f7ba66f816859125e7e751ac917077d17434c67e7"

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
