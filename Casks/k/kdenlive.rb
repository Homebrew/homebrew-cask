cask "kdenlive" do
  version "23.08.1"
  sha256 "5be8a40bbb859c32d75a2bab4a6c264a57727725ea9c6fd5ada0d6443adde05a"

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
