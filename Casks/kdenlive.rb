cask "kdenlive" do
  version "23.04.3"
  sha256 "aa9947dd41529c4e541e5ed429adca5dfff45d9fa359a5418d44db0a8a92510d"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.major_minor}/macOS/kdenlive-#{version}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/en/download/"
    regex(/href=.*?kdenlive[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "kdenlive.app"

  zap trash: [
    "~/Library/Application Support/kdenlive",
    "~/Library/Caches/kdenlive",
    "~/Library/Preferences/kdenliverc",
    "~/Library/Preferences/kdenlive-layoutsrc",
  ]
end
