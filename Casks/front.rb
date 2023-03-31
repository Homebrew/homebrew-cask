cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.41.16"
  sha256 arm:   "dc9c3c9b18d42dd0630cde000965188cd383d8667dc6df0d1db1e9f2c7497972",
         intel: "24a000a630b5199a35bf6969fc6d77ee19e8071f6663a3ef320e1a817c08f988"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
