cask "gopeed" do
  version "1.5.6"
  sha256 "58a22f680a84c72c1a9ba9728c2e17dd27dae171c24b5ceb94bc8dd20475232e"

  origin = "https://github.com/GopeedLab/gopeed/releases/download/v#{version}/Gopeed-v#{version}-macos.dmg"

  url origin.to_s,
      verified: "github.com/GopeedLab/gopeed/"
  name "Gopeed"
  desc "Modern download manager that supports all platforms"
  homepage "https://gopeed.com/"

  livecheck do
    url origin.to_s
    strategy :github_latest
  end

  auto_updates true

  app "Gopeed.app"

  zap trash: [
    "~/Library/Application Scripts/com.gopeed",
    "~/Library/Containers/com.gopeed",
  ]
end

