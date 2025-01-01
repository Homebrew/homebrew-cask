cask "millie" do
  version "2.1.2,100"
  sha256 "1ec0830ae6daeafd0eefe335f8b005feacfb9b3af2b14ddddd6e33db13917123"

  url "https://install.millie.co.kr/flutter/#{version.csv.first}/millie.dmg"
  name "Millie"
  desc "Korean e-book store"
  homepage "https://www.millie.co.kr/"

  livecheck do
    url "https://install.millie.co.kr/flutter/millie.dmg"
    strategy :extract_plist
  end

  depends_on macos: ">= :big_sur"

  app "Millie.app"

  zap trash: [
    "~/Library/Application Support/kr.co.millie.MillieShelf/",
    "~/Library/Caches/kr.co.millie.MillieShelf",
    "~/Library/HTTPStorages/kr.co.millie.MillieShelf.binarycookies",
    "~/Library/Saved Application State/kr.co.millie.MillieShelf.savedState",
    "~/Library/WebKit/kr.co.millie.MillieShelf",
  ]
end
