cask "millie" do
  version "2.1.2"
  sha256 "1ec0830ae6daeafd0eefe335f8b005feacfb9b3af2b14ddddd6e33db13917123"

  url "https://install.millie.co.kr/flutter/#{version}/millie.dmg"
  name "Millie"
  desc "Korean e-book store"
  homepage "https://www.millie.co.kr/"

  livecheck do
    url "https://install.millie.co.kr/flutter/flutter_desktop_version.json"
    strategy :json do |json|
      json["versions"]&.map do |version, platforms|
        next if platforms["macos"] != "prod"

        version
      end
    end
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
