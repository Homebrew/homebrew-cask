cask "qlc-plus" do
  version "4.12.5"
  sha256 "23d76cfa302d19f074250431efe372930cc61a69065da734f32dc39659920553"

  url "https://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analog lighting systems"
  homepage "https://qlcplus.org/"

  livecheck do
    url "https://github.com/mcallegari/qlcplus"
    regex(/^QLC\+[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"
end
