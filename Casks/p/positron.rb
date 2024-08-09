cask "positron" do
  version "2024.08.0-24"
  sha256 "1c8212c2ce708b06f55c93e9280c21c5b07feeb171ea9a73e1153816a2ddab10"

  url "https://github.com/posit-dev/positron/releases/download/#{version}/Positron-#{version}.dmg"
  name "Positron"
  desc "Data science IDE"
  homepage "https://github.com/posit-dev/positron"

  depends_on macos: ">= :catalina"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
