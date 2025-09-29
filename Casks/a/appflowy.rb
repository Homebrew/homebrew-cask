cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.0"
  sha256 arm:   "45376f01faa2f32915b20dbbd80aa67b22f652c154568fc0d85426f29b2fca1e",
         intel: "7b5485f77010e1a632426a4ce728dfe1dddbcac1a080025ccbc3cd82f680e649"

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/Appflowy-#{version}-macos-#{arch}.zip",
      verified: "github.com/AppFlowy-IO/AppFlowy/"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AppFlowy.app"

  zap trash: [
    "~/Library/Application Scripts/com.appflowy.macos",
    "~/Library/Containers/com.appflowy.macos",
  ]
end
