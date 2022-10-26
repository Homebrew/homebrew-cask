cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.37.11"
  sha256 arm:   "2e3883b80abc38b23dcb85192c873c48b5aa6d4b568bbc5e060941910b742278",
         intel: "fa34b682f2cd0884852d596429bf9b438980ac84a5cda70bc76d45d670922d71"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds"
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
