cask "reader" do
  version "0.1.1"
  sha256 "f8328a701bdefbd839c484c57827bd05b56be4216722dfe72c4348b823f9048d"

  url "https://reader-desktop-releases.readwise.io/versions/#{version}/macos/Reader.app.tar.gz"
  name "Readwise Reader"
  desc "Save articles to read, highlight key content, and organize notes for review"
  homepage "https://readwise.io/read/"

  livecheck do
    url "https://reader-desktop-releases.readwise.io/update-manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Reader.app"

  zap trash: [
    "~/Library/Application Support/io.readwise.read",
    "~/Library/Caches/io.readwise.read",
    "~/Library/HTTPStorages/io.readwise.read.binarycookies",
    "~/Library/Saved Application State/io.readwise.read.savedState",
    "~/Library/WebKit/io.readwise.read",
  ]
end
