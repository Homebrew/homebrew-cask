cask "millie" do
  version "2.14.1"
  sha256 "90fb591f0e3c21b44109b778b9f57dfd94e1056ecf17ef7cf279b39b9f6bd58a"

  url "https://install.millie.co.kr/flutter/#{version}/millie.dmg"
  name "Millie"
  desc "Korean e-book store"
  homepage "https://www.millie.co.kr/"

  livecheck do
    url "https://install.millie.co.kr/flutter/flutter_desktop_version.json"
    strategy :json do |json|
      json.dig("min", "macos")
    end
  end

  depends_on macos: ">= :big_sur"

  app "밀리의서재.app"

  zap trash: [
    "~/Library/Application Support/kr.co.millie.MillieShelf",
    "~/Library/Caches/kr.co.millie.MillieShelf",
    "~/Library/HTTPStorages/kr.co.millie.MillieShelf.binarycookies",
    "~/Library/Saved Application State/kr.co.millie.MillieShelf.savedState",
    "~/Library/WebKit/kr.co.millie.MillieShelf",
  ]
end
