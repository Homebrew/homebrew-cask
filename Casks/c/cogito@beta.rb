cask "cogito@beta" do
  version "0.12.3,1"
  sha256 "f1b07d2cb34f0aad38e9b4a110c4f8cada9722f75631cbe47750c3be94025ebd"

  url "https://downloads.cogito.md/releases/#{version.csv.first}/#{version.csv.second}/Cogito-#{version.csv.first}-#{version.csv.second}-mac.zip",
      verified: "downloads.cogito.md/"
  name "Cogito"
  desc "Native Markdown editor for folder-first notes"
  homepage "https://cogito.md/"

  livecheck do
    url "https://cogito.md/updates/appcast.xml"
    regex(%r{/Cogito[._-]v?(\d+(?:\.\d+)+)-(\d+)-mac\.zip}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map { |match| match.join(",") }
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Cogito.app"

  zap trash: [
    "~/Library/Application Support/Cogito",
    "~/Library/Caches/com.cogito.app",
    "~/Library/HTTPStorages/com.cogito.app",
    "~/Library/Preferences/com.cogito.app.plist",
    "~/Library/Saved Application State/com.cogito.app.savedState",
  ]
end
