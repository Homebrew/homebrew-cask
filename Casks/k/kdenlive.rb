cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "24.02.1"
  sha256 arm:   "3fa05ad9e7fd01cd85b23e6271f0ed1be72d8d49d9be3161d6916624a4091dcf",
         intel: "b7f3940fbcf59850a063b9c6e2f07fec2d63c632db6aeb84b2a37bae8bf21c3a"

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
