cask "panwriter" do
  arch arm: "arm64", intel: "x64"

  version "0.8.9"
  sha256 arm:   "d37d73a101079410fcad54ac6b8a071c226614c9e548e28a0aeaec4f4aecc1c7",
         intel: "82861d4945b3f54c568cea08aaeac5d98f55b2e03917489ddc7ab06b02c3cfc9"

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
