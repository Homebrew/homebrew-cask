cask "kdenlive" do
  version "22.04.0"
  sha256 "2f09e3daa989a2bede26be3c8247d5a43e8e10fbc8ff10309a86dec49f246395"

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.major_minor}/macOS/kdenlive-#{version}.dmg",
      verified: "cdn.download.kde.org/stable/kdenlive/"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/en/download/"
    regex(%r{stable/kdenlive/\d+(?:\.\d+)+/macOS/kdenlive-(\d+(?:\.\d+)+(?:\.\d+)+).dmg['"]?}i)
  end

  depends_on macos: ">= :mojave"
  depends_on arch: :intel

  app "kdenlive.app"

  zap trash: [
    "~/Library/Application Support/kdenlive",
    "~/Library/Caches/kdenlive",
    "~/Library/Preferences/kdenliverc",
    "~/Library/Preferences/kdenlive-layoutsrc",
  ]
end
