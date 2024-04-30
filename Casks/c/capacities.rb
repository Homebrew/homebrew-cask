cask "capacities" do
  arch arm: "-arm64"

  version "1.36.7"
  sha256 arm:   "dff488d0daafeac9ea732f3d238a5686f8e3d8bfd18d97cb6c39ad6680bc7e92",
         intel: "d9db11e09c2cbffed3850e5eabf9c49f9229180282d1033c1202d39ab2cb013b"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities/",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
