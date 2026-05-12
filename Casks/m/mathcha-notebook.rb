cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.451"
  sha256 arm:   "05a77058268e242225fc7cbbb82cc99f3ed0eb00a34e34258fa32608f8d858a8",
         intel: "778a444235a1465ee982b855534348092e85cc74b4b04e27d71dab4db4a92550"

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-#{version}#{arch}-mac.zip"
  name "Mathcha Notebook"
  desc "Mathematics editor"
  homepage "https://www.mathcha.io/"

  livecheck do
    url "https://notebook-downloads.mathcha.io/public/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Mathcha Notebook.app"

  zap trash: [
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
