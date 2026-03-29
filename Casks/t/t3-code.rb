cask "t3-code" do
  arch arm: "arm64", intel: "x64"

  version "0.0.15"
  sha256 arm:   "4e90dff1524419f65eea913d02d7a53084d85391df6c87c3318d82ba878736e9",
         intel: "9867f791a8e5ae3e1fe3ca741b1ab4130361f05e90d8bed7d48298ffa1579468"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "T3 Code (Alpha).app"

  zap trash: [
    "~/.t3/userdata",
    "~/Library/Application Support/T3 Code (Alpha)",
    "~/Library/Caches/com.t3tools.t3code",
    "~/Library/HTTPStorages/com.t3tools.t3code",
    "~/Library/Preferences/com.t3tools.t3code.plist",
    "~/Library/Saved Application State/com.t3tools.t3code.savedState",
  ]
end
