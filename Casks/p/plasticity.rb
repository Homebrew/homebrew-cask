cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.1.1"
  sha256 arm:   "2346bfc9e2ca64a03c110b7591b5c50de572ddab860225f27c92eb3ad9abf6b7",
         intel: "fe67f3c5bf91affa70256746da07cedd90743181fc857e31f8444315ba3e40cf"

  url "https://github.com/nkallen/plasticity/releases/download/v#{version}/Plasticity-darwin-#{arch}-#{version}.zip",
      verified: "github.com/nkallen/plasticity/"
  name "Plasticity"
  desc "3D modeling software for concept artists and designers"
  homepage "https://www.plasticity.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Plasticity.app"

  zap trash: [
    "~/Library/Application Support/Plasticity",
    "~/Library/Preferences/com.electron.plasticity.plist",
  ]
end
