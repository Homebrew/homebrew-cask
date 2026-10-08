cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.80.0"
  sha256 arm:   "487cda7295c171021eedda939e0873ef63944516731e3fb58a86c83ea7eef4c2",
         intel: "b0866830312dceb55f4b2022dfe5859f201a122c023a111ac2d6bec0d07909a4"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
