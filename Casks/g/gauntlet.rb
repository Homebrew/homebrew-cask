cask "gauntlet" do
  version "21"
  sha256 "70468c9494941289f9db162f21fd85f0df98bc8ea30bb567deb068ef06c1e0b1"

  url "https://github.com/project-gauntlet/gauntlet/releases/download/v#{version}/gauntlet-universal-macos.dmg"
  name "Gauntlet"
  desc "Open-source cross-platform application launcher"
  homepage "https://github.com/project-gauntlet/gauntlet"

  deprecate! date: "2025-11-20", because: :unmaintained

  depends_on macos: ">= :big_sur"

  app "Gauntlet.app"

  uninstall quit: "dev.project-gauntlet.Gauntlet"
  uninstall login_item: "Gauntlet"

  zap trash: [
    "~/Library/Application Support/dev.project-gauntlet.Gauntlet",
    "~/Library/Caches/dev.project-gauntlet.Gauntlet",
  ]
end
