cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.52.5"
  sha256 arm:   "991f1b151372197b5c9f840bf1ff98924734e3f00ae6b5d3226630e2b40f64b6",
         intel: "5f660da08ddccdc80bd91964ace84417cdcd97376e6496afebbb94dd0aa6b25e"

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
