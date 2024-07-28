cask "qlc-plus" do
  version "4.13.1"
  sha256 "d4f9c3d81de0c3c957d55edc9f8449edb1e64cdbc5084e6d1c9336dcb46c4585"

  url "https://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  name "Q Light Controller+"
  desc "Control DMX or analogue lighting systems"
  homepage "https://qlcplus.org/"

  livecheck do
    url "https://qlcplus.org/download"
    regex(/href=.*?QLC\+[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "QLC+.app"

  zap trash: "~/Library/Application Support/QLC+"

  caveats do
    requires_rosetta
  end
end
