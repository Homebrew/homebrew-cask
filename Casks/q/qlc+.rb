cask "qlc+" do
  arch arm: "arm64", intel: "x86_64"

  version "5.2.2"
  sha256 arm:   "116b83e96be1bbc66b89f3bbc98dc79be8766f4a123bb7347658b34d07eb1c18",
         intel: "6e07bb853e115655db8447ac7f5123f38f233426f27a8d4dfe77e5c59dcb2146"

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
