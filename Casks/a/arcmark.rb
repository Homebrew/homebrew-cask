cask "arcmark" do
  version "0.1.0"
  sha256 "c1f4ab22e991257912fce7e13a9152086d563984a5176221c668ec6b9ce21711"

  url "https://github.com/Geek-1001/arcmark/releases/download/v#{version}/Arcmark-#{version}.dmg"
  name "Arcmark"
  desc "Bookmark manager providing browser-attached sidebar"
  homepage "https://github.com/Geek-1001/arcmark"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Arcmark.app"

  uninstall quit: "com.arcmark.app"

  zap trash: [
    "~/Library/Application Support/Arcmark",
    "~/Library/Preferences/com.arcmark.app.plist",
  ]
end
