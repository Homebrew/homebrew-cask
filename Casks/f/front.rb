cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.66.2"
  sha256 arm:   "92814e3ef9b57ac14e25c91c8b3061e91a6d764264623331bd86a484b5f5f964",
         intel: "b2663c02fba2a384ac57d93e41529bc7db6aad40178864fd97b479fa46bcdb3f"

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
