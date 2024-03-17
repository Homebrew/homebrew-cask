cask "qlc-plus" do
  version "4.13.0"
  sha256 "2d64913a088eea6afe6210e781a092ed743dcb02fbe769cccf490e893665402e"

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
end
