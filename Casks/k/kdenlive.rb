cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "24.05.2"
  sha256 arm:   "7d5fed0a70557d4a1f6d77f47727325dceeb0e5cf50618b9c930a30602cd1472",
         intel: "c9f14203a4e082b1d7dffd37d2b38bfdc47fa53446590fba73b0f90cb11ae78a"

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
