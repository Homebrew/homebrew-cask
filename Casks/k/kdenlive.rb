cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "24.05.0"
  sha256 arm:   "2f211c6ba39e537713f2d36a2f4734d36c83edb28b2cb560d5d54f217da9ad64",
         intel: "012e3ffaa9a4b79ad6c8f654282a556e3b6a859c5b4c2feaf426c5c822bc8fb7"

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
