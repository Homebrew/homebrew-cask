cask "millie" do
  version "2.2.1"
  sha256 "8648024bad94d411daa031bf0569564b7fb4f7a0aba524085a1ec325890c376e"

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
