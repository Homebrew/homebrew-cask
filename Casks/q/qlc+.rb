cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "4.14.0"
  sha256 arm:   "f1c062b09b61cbe347e6f945c806491e501c52a855a15e6e1fc5494967775eb4",
         intel: "1603b49c19a85c280ec4866ab515106c6abf29d4bf461a13b8b73228ad08b115"

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
