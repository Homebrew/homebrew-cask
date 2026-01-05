cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.45"
  sha256 arm:   "100479a6e920ebe717a13946bf19ce9973e26fb9568fe758a42e974a4d6b03bb",
         intel: "8d281aa18db8fda95580f16bfcd665eca7db6d9a1be6472a8266d401bbd74d95"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
