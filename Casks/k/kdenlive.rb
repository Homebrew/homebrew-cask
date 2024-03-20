cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "24.02.0"
  sha256 arm:   "5304529de58351b1159708f1cf005effd5f7102daf78a493fea1055be3c8d7a6",
         intel: "4b6847ec12c82cf05bd239a221e98baac8baa6b33afa12f84630b12f8e62a3ec"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.major_minor}/macOS/kdenlive-#{version}_A-#{arch}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/en/download/"
    regex(/href=.*?kdenlive[._-]v?(\d+(?:[.-]\d+)+)_A-#{arch}.dmg/i)
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
