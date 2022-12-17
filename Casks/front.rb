cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.39.22"
  sha256 arm:   "a7a66819f50bc243962728f8762775a06422489ce7e3b9e793db22dc0cd82ca5",
         intel: "bf07d47ddcbb2ff962d9ca9f717ba958d39a6143b491ba0d9221cd047cf57602"

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
