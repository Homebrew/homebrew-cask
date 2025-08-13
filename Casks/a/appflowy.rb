cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.7"
  sha256 arm:   "dec96b46fb8cdd8b2c27366e6c7a36e6ec4b23fb18f32cee160bf3b043626c57",
         intel: "f3c62f8349a65e51181bb9dba88727607f57f9bad55dcf017735a5e79089c1bf"

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
