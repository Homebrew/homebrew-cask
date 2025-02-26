cask "positron" do
  version "2025.03.0-97"
  sha256 "75714fcf5d53dcdc3e363ee0e87b9457a518df09726a5415d3ba9d8c45d7c097"

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
