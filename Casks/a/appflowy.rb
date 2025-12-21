cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.7"
  sha256 arm:   "889161a0e68353af1a5d76692b45e61defef233ea0ecd0a83109ee8e7f34dd00",
         intel: "aa243b22de5d82a635a635e731b421f9be62dc0bde5fc797713c1b58fc379be5"

  on_intel do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.dmg",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
