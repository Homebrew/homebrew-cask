cask "mac2imgur" do
  version "226"
  sha256 "8faeb435fcb866267fa67d4b93d5fc9fb82bcfb2e959c7fcc6f59ab15fb05ccb"

  url "https://github.com/mileswd/mac2imgur/releases/download/b#{version}/mac2imgur.zip"
  name "mac2imgur"
  homepage "https://github.com/mileswd/mac2imgur"

  livecheck do
    url :url
    strategy :git
  end

  app "mac2imgur.app"

  zap trash: [
    "~/Library/Caches/com.mileswd.mac2imgur",
    "~/Library/Preferences/com.mileswd.mac2imgur.plist",
  ]
end
