cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"

  version "24.05.1"
  sha256 arm:   "2ee0bab570a0da2a0afabbbb54c02b3d8f78466c74e30e94398396322eda4244",
         intel: "a130ce91655a568fbae803e9e227cb600d77e04a9dc4f762334a19c2192fa65a"

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
