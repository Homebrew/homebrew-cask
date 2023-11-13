cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.46.3"
  sha256 arm:   "42be0d26c07b0f26395beb6227da8ee0ca6ed0087a2dbd07c8bfcba80d05c5cb",
         intel: "38ed7e7481b697edf69951ce364e60522a800dc5b9e552c23c97e7e3d6ae8b65"

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
