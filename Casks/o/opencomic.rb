cask "opencomic" do
  version "1.1.0"
  sha256 "98d0b314162c398f6f99dd2e0c6cdeb01e6940db830d7ea610a998818ecc2bd4"

  url "https://github.com/ollm/OpenComic/releases/download/v#{version}/OpenComic-#{version}.dmg"
  name "OpenComic"
  desc "Comic and Manga reader"
  homepage "https://github.com/ollm/OpenComic"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "opencomic.app"

  zap trash: "~/Library/Application Support/OpenComic"
end
