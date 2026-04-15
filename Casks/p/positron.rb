cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.1-10"
  sha256 arm:   "54ff29d1a7d508957f23343fa5390576990016158fe2ede7c56fbe3afd1078ba",
         intel: "6408485c94e6ba79ae8ed46aa9b7fe2479f857010b9d9a7f8cc372c553122394"

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

  depends_on macos: ">= :monterey"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
