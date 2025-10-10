cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.0-199"
  sha256 arm:   "9ceeb415f2b10af6f514608bb9d7e31115b79563e459db5ff060a0714015bbe5",
         intel: "f4703eaeb04d2a8307fd12fd523bbfeda33343e24c182c6183250b8c653377f4"

  url "https://cdn.posit.co/positron/releases/mac/#{arch}/Positron-darwin-#{version}-#{arch}.zip"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/#{arch}/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
