cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "4.14.1-1"
    sha256 "b78c6beea9bdafa347b6cdd1e1a5f2fdff7ec9f2304ef960a875cb200ea65995"
  end
  on_intel do
    version "4.14.1"
    sha256 "81c77696afba5e3a803ee0e16be02595bd6a2ba628d3240ebd30654936003801"
  end

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
