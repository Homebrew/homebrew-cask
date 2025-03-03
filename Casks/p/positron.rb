cask "positron" do
  version "2025.03.0-116"
  sha256 "b2cfa261dc4c8d40ee230ba78afb4e48e515645952c6cb53f8f5048c97dc69a8"

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
