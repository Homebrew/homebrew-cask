cask "positron" do
  version "2024.07.0-59"
  sha256 "a3dba053afcfe597b220164805312a26283a54fd39fbf60d2d6e2f2745e6c6a7"

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
