cask "positron" do
  version "2024.08.0-5"
  sha256 "effb2a4afb74bb0da0fc770715a3959f75a37d2f53025ee6f6ff4457c75f28df"

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
