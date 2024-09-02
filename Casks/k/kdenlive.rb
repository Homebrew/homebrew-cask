cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "24.08.0"
  sha256 arm:   "8d88cf8bdb0f747c182c7b2b8a1e28152fa1f18bf43f0cdd147e290eb0d015e0",
         intel: "23fb7237dfe3335445005730974a644b91e456669c5dda3426372baf75bf60f5"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.major_minor}/macOS/kdenlive-#{version}-#{arch}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/en/download/"
    regex(/href=.*?kdenlive[._-]v?(\d+(?:[.-]\d+)+)-#{arch}.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "kdenlive.app"

  zap trash: [
    "~/Library/Application Support/kdenlive",
    "~/Library/Caches/kdenlive",
    "~/Library/Preferences/kdenlive-layoutsrc",
    "~/Library/Preferences/kdenliverc",
  ]
end
