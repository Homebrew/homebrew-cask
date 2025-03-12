cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "4.14.1"
  sha256 arm:   "e48342ada15133e744d4936219cf30c77d84e519413b2a66731eb2919d83e208",
         intel: "81c77696afba5e3a803ee0e16be02595bd6a2ba628d3240ebd30654936003801"

  url "https://qlcplus.org/downloads/#{version}/QLC+_#{version}_#{arch}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analogue lighting systems"
  homepage "https://qlcplus.org/"

  livecheck do
    url "https://qlcplus.org/download"
    regex(/href=.*?QLC\+[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
