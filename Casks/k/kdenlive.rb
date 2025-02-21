cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "24.12.2"
  sha256 arm:   "4dbfe13f38e1751bb4f5932455939e5bd98cddc0534ed159480a6435c95b3df8",
         intel: "3a2b4b7fae691f9fb5cc0691f4cc01ccc259d7a8d8fb09d949b85b9fc5cdb828"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.major_minor}/macOS/kdenlive-#{version}-#{arch}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/en/download/"
    regex(/href=.*?kdenlive[._-]v?(\d+(?:[.-]\d+)+)-#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "kdenlive.app"

  zap trash: [
    "~/Library/Application Support/kdenlive",
    "~/Library/Caches/kdenlive",
    "~/Library/Preferences/kdenlive-layoutsrc",
    "~/Library/Preferences/kdenliverc",
    "~/Library/Preferences/org.kde.Kdenlive.plist",
  ]
end
