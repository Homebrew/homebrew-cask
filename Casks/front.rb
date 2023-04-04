cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.41.17"
  sha256 arm:   "a7c677be2dae96065ba4d5bbf1100f4d2f1f749e96caf64f6514b645ae46cc4e",
         intel: "17747bbe009c5193155f3050163a9b2279e4b7d25ecd7771c0fa4ec845fd6f90"

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
