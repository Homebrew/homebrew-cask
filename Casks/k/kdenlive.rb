cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "25.08.0"
  sha256 arm:   "e10887fef445624757fbe4ca0ebb88da7bbbe0369e7db241aa2076406cec597a",
         intel: "e26559d88d0a96471d4625fa41d9907fd779dabe5032caabde1ec42693428dea"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.major_minor}/macOS/kdenlive-#{version}-#{arch}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/download/"
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
