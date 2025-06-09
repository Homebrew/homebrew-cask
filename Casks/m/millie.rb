cask "millie" do
  version "2.4.1"
  sha256 "8bec024cc26fe2709444e9b156ea6778e5b229fb3058c4cecbdf2caf6f5db3b0"

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
    "~/Library/Application Support/kr.co.millie.MillieShelf",
    "~/Library/Caches/kr.co.millie.MillieShelf",
    "~/Library/HTTPStorages/kr.co.millie.MillieShelf.binarycookies",
    "~/Library/Saved Application State/kr.co.millie.MillieShelf.savedState",
    "~/Library/WebKit/kr.co.millie.MillieShelf",
  ]
end
