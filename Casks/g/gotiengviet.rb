cask "gotiengviet" do
  version "2.4,32"
  sha256 :no_check

  url "https://www.trankynam.com/gotv/downloads/GoTiengViet.dmg"
  name "GoTiengViet"
  desc "Type Vietnamese conveniently, accurately, and quickly"
  homepage "https://www.trankynam.com/gotv/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "GoTiengViet.app"

  zap trash: [
    "~/Library/Application Scripts/com.trankynam.GoTiengViet",
    "~/Library/Containers/com.trankynam.GoTiengViet",
  ]
end
