cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.59.1"
  sha256 arm:   "12e7485205e2c6305a174a6cede24d3ea7dd592ddc7e59e08a23f0c83f58b5cb",
         intel: "15d47c403921cb2ef18124d7b8f55d83d9c804c9a1e300f7cbfd73c3e5d18b09"

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
