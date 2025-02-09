cask "panwriter" do
  arch arm: "arm64", intel: "x64"

  version "0.8.8"
  sha256 arm:   "9b5ffc080850c9f6edb2749332d1a4de39d96a9412921d8d5eec5765eecfb48f",
         intel: "44de06ac8a2f2f9c6ae5d025843e85d735ac252b464ea84db771b2882d4340f4"

  url "https://github.com/mb21/panwriter/releases/download/v#{version}/PanWriter-#{version}-#{arch}.dmg",
      verified: "github.com/mb21/panwriter/"
  name "PanWriter"
  desc "Markdown editor with pandoc integration and paginated preview"
  homepage "https://panwriter.com/"

  depends_on formula: "pandoc"
  depends_on macos: ">= :high_sierra"

  app "PanWriter.app"

  zap trash: [
    "~/Library/Application Support/PanWriter",
    "~/Library/Preferences/com.panwriter.app.plist",
  ]
end
