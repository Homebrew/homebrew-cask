cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.9"
  sha256 arm:   "11c8d7aa1a352a00ef7305cb9a69a905b0869c4f1ee87c9c494ebec48588c6b6",
         intel: "765b98f58a985294491bff966f47a2b38f12cf6628e14a31c7dc10c8098342ee"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
