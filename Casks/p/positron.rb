cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.0-297"
  sha256 arm:   "bde086aeb2f2cef5eab7bcee76a0914514185e4183faf8aa7cf9730d0cbec203",
         intel: "bcb61b5fc1a13f5c87f3e9a15160069587bc4af2ab4bcbeb0102f608b4cca8c3"

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

  depends_on macos: :monterey

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
