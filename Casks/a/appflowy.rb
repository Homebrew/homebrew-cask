cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.1"
  sha256 arm:   "e69d87ada466ef3c3f48b17b865be0667b797b5dae85c8177d4fbc8d2f4faa01",
         intel: "631f1f21a18d259a9b76b732503247e59063ee5dc60e64d9c3bae93f62c0d5ee"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "AppFlowy-#{arch}.app", target: "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
