cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.8"
  sha256 arm:   "2602517f56f98136904f341fb2a8b12f87bb680d5269767e991ababbdb127178",
         intel: "34af6821dc68b686d4168f690c54ea68a5f9d12a45a212427eb890cd7b55da23"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :mojave"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
