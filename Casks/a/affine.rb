cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "61229f921052ecb31c8fff3db8bae9fadc0f246aa937702afa723e0a9710cf1b",
         intel: "c310add92764b42a029d5139807583308291a5d833adc39bf75913e90331b717"

  url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-stable-macos-#{arch}.zip",
      verified: "github.com/toeverything/AFFiNE/"
  name "AFFiNE"
  desc "Note editor and whiteboard"
  homepage "https://affine.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
