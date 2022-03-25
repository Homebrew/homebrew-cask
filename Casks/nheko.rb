cask "nheko" do
  version "0.9.3"
  sha256 "f51e814b9d31fda776866aad9a8d62b61175c565b5a783de9c2f87a47e8c13fb"

  url "https://github.com/Nheko-Reborn/nheko/releases/download/v#{version.csv.first}/nheko-v#{version.csv.first}.dmg",
      verified: "github.com/Nheko-Reborn/nheko/"
  name "Nheko"
  desc "Desktop client for the Matrix protocol"
  homepage "https://nheko-reborn.github.io/"

  livecheck do
    url "https://github.com/Nheko-Reborn/nheko/releases/latest"
    strategy :page_match do |page|
      match = page.match(/nheko[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Nheko.app"
end
