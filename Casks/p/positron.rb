cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.03.0-212"
  sha256 arm:   "0eef3a5a6406edeb8044974e06405e851e777357566e26e5386dd689ad761aab",
         intel: "89ef2c69c43bf6bf9dd82e7f62a8e2193aaad86f18fba5742a2e02cae9e1e998"

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
