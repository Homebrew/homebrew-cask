cask "positron" do
  version "2024.06.1-27"
  sha256 "74ae5bbcb6818dc3c6bbd41ce7a6e32ebef8aa67daa42eafbb4e059ab5d68caa"

  url "https://github.com/posit-dev/positron/releases/download/#{version}/Positron-#{version}.dmg"
  name "Positron"
  desc "VScode-based data science IDE"
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
