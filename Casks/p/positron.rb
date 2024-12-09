cask "positron" do
  version "2025.01.0-39"
  sha256 "25685c0c7509e442d6cd6889adeee8010e4dd0046de81429b4487d4e4af4fa14"

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
