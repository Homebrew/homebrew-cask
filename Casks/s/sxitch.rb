cask "sxitch" do
  version "1.5.2"
  sha256 "e4fff1608b3e340bedab9660b3db14d4a1302402d59a4df13152cd3f655f80a5"

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/v#{version}/Sxitch.app.zip"
  name "Sxitch"
  desc "Tree-based app switcher"
  homepage "https://sxitch.app/"

  livecheck do
    url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/version.txt"
    regex(/^(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sequoia

  app "Sxitch.app"

  zap trash: [
    "~/Library/Application Support/Sxitch",
    "~/Library/Caches/app.sxitch",
    "~/Library/Preferences/app.sxitch.plist",
  ]
end
