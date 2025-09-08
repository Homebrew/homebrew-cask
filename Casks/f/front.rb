cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.65.9"
  sha256 arm:   "994e71b019431d8126698b88b1c3412a6d932d66923159b20e7492108a14cdd2",
         intel: "ffeb7c1248de57144a0d0b927467c6b87f69f6f7d9d8dd8be349fa9430b48aa2"

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
