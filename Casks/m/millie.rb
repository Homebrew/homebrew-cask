cask "millie" do
  version "2.11.2"
  sha256 "a6c2f3ed9e657c4ffad3dfe1b5859a3af5c57c1d340cc4bd82dd0949e37620cb"

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
