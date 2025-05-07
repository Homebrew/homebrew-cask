cask "positron" do
  version "2025.05.0-142"
  sha256 "ab316f8695f7c54cdd70f6d5064bb570f09a92528c692d5f36d2aca8d9f40d76"

  url "https://cdn.posit.co/positron/prereleases/mac/universal/Positron-#{version}.dmg"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/prereleases/mac/universal/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
