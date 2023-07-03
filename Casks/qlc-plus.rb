cask "qlc-plus" do
  version "4.12.7"
  sha256 "3fb75d4e267e3743c2659cc32301d2158a0abe0910a2dc14808780fb9aed28f8"

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
