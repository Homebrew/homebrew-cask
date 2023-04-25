cask "capacities" do
  arch arm: "-arm64"
  on_arch_conditional arm: "apple-silicon", intel: "mac"

  version "1.21.10"
  sha256 arm:   "8f83514639af65237a095cdeb9f5e9c0d5782aff7c21a4537b05005a4e00d9c2",
         intel: "acc61baed9329c14cae1cf765d39407ad709937b604f584c81be3b9afa3697ff"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "Is a place for all your information"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
