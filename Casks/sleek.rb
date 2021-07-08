cask "sleek" do
  version "1.0.8"
  sha256 "b7c1e2aae275deaad2e119b0de2c394d3d6beb7607be809cbdef1bc9d66111f0"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac.dmg"
  name "sleek"
  desc "Todo list manager"
  homepage "https://github.com/ransome1/sleek"

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Saved Application State/RobinAhle.sleektodomanager.savedState",
    "~/Library/Preferences/RobinAhle.sleektodomanager.plist",
  ]
end
