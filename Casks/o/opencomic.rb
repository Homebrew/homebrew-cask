cask "opencomic" do
  arch arm: "-arm64"

  version "1.6.5"
  sha256 arm:   "7c324fecbf12a2ad9180e603a36de405fe1753ac5cfb8efb01ea950e1c82e346",
         intel: "ad139381c0045845aed374507e63433465531743c8c94247899c4173ef640c5b"

  url "https://github.com/ollm/OpenComic/releases/download/v#{version}/OpenComic-#{version}#{arch}.dmg",
      verified: "github.com/ollm/OpenComic/"
  name "OpenComic"
  desc "Comic and Manga reader"
  homepage "https://opencomic.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "OpenComic.app"

  zap trash: [
    "~/Library/Application Support/OpenComic",
    "~/Library/Caches/opencomic",
    "~/Library/Preferences/org.opencomic.app.plist",
  ]
end
