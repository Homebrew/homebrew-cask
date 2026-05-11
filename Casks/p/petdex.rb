cask "petdex" do
  arch arm: "arm64", intel: "x64"

  version "0.1.9"
  sha256 :no_check

  url "https://petdex.crafter.run/api/desktop/latest-release?asset=darwin-#{arch}"
  name "Petdex"
  desc "Desktop companion for Codex pets"
  homepage "https://petdex.crafter.run/"

  livecheck do
    url "https://petdex.crafter.run/api/desktop/latest-release?asset=darwin-arm64"
    regex(%r{/desktop-v?(\d+(?:\.\d+)+)/Petdex-arm64\.dmg}i)
    strategy :header_match do |all_headers, regex|
      all_headers.filter_map { |headers| headers["location"]&.[](regex, 1) }.first
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Petdex.app"

  uninstall quit: "run.crafter.petdex-desktop"

  zap trash: [
    "~/.petdex",
    "~/.petdex-desktop",
    "~/Library/Caches/run.crafter.petdex-desktop",
    "~/Library/HTTPStorages/run.crafter.petdex-desktop",
    "~/Library/Preferences/run.crafter.petdex-desktop.plist",
    "~/Library/Saved Application State/run.crafter.petdex-desktop.savedState",
    "~/Library/WebKit/run.crafter.petdex-desktop",
  ]
end
