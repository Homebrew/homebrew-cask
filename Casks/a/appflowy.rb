cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.9"
  sha256 arm:   "9d14392384f90954680fb6ec32989e07cfaae7d481c5eb324e9167a602e76595",
         intel: "50539c9ba863d2af1334c4f9616fb908e8ed3fb02c9b6d089f4f5a8851c3a03b"

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
