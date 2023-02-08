cask "panwriter" do
  arch arm: "arm64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "1e2c5bd96b60ebc3737ad155d8cd982610bc77c4d6d4d80438a46f3d5b540983",
         intel: "9769a78b4f099da93631c2652ab0ea4a83a52130b8714ebad2281ab28607a847"

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
