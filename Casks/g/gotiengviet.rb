cask "gotiengviet" do
  version "2.4"
  sha256 :no_check

  url "https://www.trankynam.com/gotv/downloads/GoTiengViet.dmg"
  name "GoTiengViet"
  desc "Type Vietnamese conveniently, accurately, and quickly"
  homepage "https://www.trankynam.com/gotv/"

  livecheck do
    url :homepage
    regex(/macOS.*?>\s*v?(\d+(?:\.\d+)+)[^<]*</im)
  end

  no_autobump! because: :requires_manual_review

  app "GoTiengViet.app"

  zap trash: [
    "~/Library/Application Scripts/com.trankynam.GoTiengViet",
    "~/Library/Containers/com.trankynam.GoTiengViet",
  ]
end
