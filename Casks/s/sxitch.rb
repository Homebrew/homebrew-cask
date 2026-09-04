cask "sxitch" do
  version "1.4.2"
  sha256 "5312d4fcf68d31d6868e5c5e8d61268d0fa9c39c7452df110ce692efdb57e6c7"

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/v#{version}/Sxitch.app.zip"
  name "Sxitch"
  desc "Tree-based app switcher"
  homepage "https://sxitch.app/"

  livecheck do
    url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/v#{version}/version.txt"
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
