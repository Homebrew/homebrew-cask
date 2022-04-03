cask "kdenlive" do
  version "21.12.3"
  sha256 "91de570db84e62923b01b75a7ddc104fce9987d34173c0e60ea5a51eb05b054a"

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
