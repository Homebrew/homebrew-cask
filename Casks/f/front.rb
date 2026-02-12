cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.69.1"
  sha256 arm:   "156a33aa8935c94fccc0850c18ac29f13d994731ce3c4e5e13fcdbf2230c8be1",
         intel: "685522d139229b84c62ea8d570b276373e529e5725351046d80c1ee12e6edf6c"

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
