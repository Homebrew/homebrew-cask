cask "kdenlive" do
  version "22.04.0-1"
  sha256 "1ae0331fd5c3ac0a5594ffedde26581e1b70c9444f676bdc7a40a74e96a556b2"

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
