cask "millie" do
  version "2.18.1"
  sha256 "dec1a41dc9c09d4f57b1ff08a41173c35dc7455f971375ad56d6972aaa3b30e0"

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

  depends_on :macos

  app "밀리의서재.app"

  zap trash: [
    "~/Library/Application Support/kr.co.millie.MillieShelf",
    "~/Library/Caches/kr.co.millie.MillieShelf",
    "~/Library/HTTPStorages/kr.co.millie.MillieShelf.binarycookies",
    "~/Library/Preferences/kr.co.millie.MillieShelf.plist",
    "~/Library/Saved Application State/kr.co.millie.MillieShelf.savedState",
    "~/Library/WebKit/kr.co.millie.MillieShelf",
  ]
end
