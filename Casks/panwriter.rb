cask "panwriter" do
  arch arm: "arm64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "06bf44d2dd81c16dcbc82aefb6f1f71379ffe9abf95ba6de1fcef3ea1b66a886",
         intel: "d0e4431d02a7f6185f12958f805ffba97b212f6fc7e2baff0564ac6e5fea0cf0"

  url "https://github.com/mb21/panwriter/releases/download/v#{version}/PanWriter-#{version}-#{arch}.dmg",
      verified: "github.com/mb21/panwriter/"
  name "PanWriter"
  desc "Markdown editor with pandoc integration and paginated preview"
  homepage "https://panwriter.com/"

  depends_on formula: "pandoc"

  app "PanWriter.app"

  zap trash: [
    "~/Library/Application Support/PanWriter",
    "~/Library/Preferences/com.panwriter.app.plist",
  ]
end
