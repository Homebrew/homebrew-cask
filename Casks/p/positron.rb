cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.0-147"
  sha256 arm:   "3cf3cb87f9aec98fac4f3d19e79e2da6d97f475b5c87515a49ae642a940c215c",
         intel: "027c3dddf780340f9fd399fd8ae5757265e31a0cb261425cb8b3da92f0d46c13"

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
