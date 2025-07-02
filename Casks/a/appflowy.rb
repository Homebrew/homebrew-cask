cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.4"
  sha256 arm:   "305335d4c844a16ea93ba0f1807fbd6c951eee1d0929eae23e872c2471a50695",
         intel: "24cab981fba32064193e919c9501f82ccd7bae6660541330f5a8970c6f6b0df4"

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
