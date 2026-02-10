cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.68.0"
  sha256 arm:   "5be34541443e027dd357eadb12d5482c0ba2abac4c92a26df5c6df12e2b74b51",
         intel: "06d83b6ba62c13bcd89c1f35565d11bf66cee081546db19f55ff6b3be033048b"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
