cask "sxitch" do
  version :latest
  sha256 :no_check

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/Sxitch.app.zip",
      verified: "pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/"
  name "Sxitch"
  desc "Tree-based app switcher"
  homepage "https://sxitch.app/"

  depends_on macos: :sequoia

  app "Sxitch.app"

  zap trash: [
    "~/Library/Application Support/Sxitch",
    "~/Library/Caches/app.sxitch",
    "~/Library/Preferences/app.sxitch.plist",
  ]
end
