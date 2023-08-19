cask "scihubeva" do
  arch arm: "arm64", intel: "x86_64"

  version "6.2.0"
  sha256 arm:   "fa885251ee123db16829cb6869041016009139197fec2152b9e0bf622a9bdca9",
         intel: "157f48cf7ebac34bef0d92aae36c893beb493396869b179627c01ce1fdde0304"

  url "https://github.com/leovan/SciHubEVA/releases/download/v#{version}/SciHubEVA-#{arch}-v#{version}.dmg"
  name "Sci-Hub EVA"
  desc "A cross-platform Sci-Hub GUI application powered by Python and Qt."
  homepage "https://github.com/leovan/SciHubEVA"

  app "Sci-Hub EVA.app"

  zap trash: [
    "~/Library/Caches/tech.leovan.SciHubEVA",
    "~/Library/Logs/leovan.tech/SciHubEVA",
    "~/Library/Preferences/tech.leovan.SciHubEVA.plist",
    "~/Library/Saved Application State/tech.leovan.SciHubEVA.savedState",
  ]
end