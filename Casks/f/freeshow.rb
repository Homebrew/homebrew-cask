cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.2.7"
  sha256 arm:   "d1416f826dc989c2e88ce0d31ce27b6f713f79c69bd9bb47cd05a838a70c0f16",
         intel: "150f214ad3f73a5988434a25e3afc1f95fa6b88103d731e53ed455f9353c6b3c"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
