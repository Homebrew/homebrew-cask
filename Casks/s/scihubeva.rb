cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.2.5"
  sha256 arm:   "0a0cc3dac89a1fb96a5e7a5f5e9c871eabc3d0804f777a94a2010173a8f03097",
         intel: "bf08005c7565d32a848821e9e3029e241ecb17bfb22bd7affa601eac7d659269"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-#{arch}-v#{version}.dmg"
  name "Sci-Hub EVA"
  desc "Cross-platform Sci-Hub GUI application powered by Python and Qt"
  homepage "https://github.com/leovan/SciHubEVA"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Sci-Hub EVA.app"

  zap trash: [
    "~/Library/Caches/tech.leovan.SciHubEVA",
    "~/Library/Logs/leovan.tech/SciHubEVA",
    "~/Library/Preferences/tech.leovan.SciHubEVA.plist",
    "~/Library/Saved Application State/tech.leovan.SciHubEVA.savedState",
  ]
end
