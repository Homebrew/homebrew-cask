cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.06.1-6"
  sha256 arm:   "1191c05a8261059ade9066495d29856d4918f3d89ed689356715dcaedc89a1e8",
         intel: "fbd2335738e44f8221b18cce9b0e9d612730c06bef219f3c5b27dc5bca32fde6"

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
