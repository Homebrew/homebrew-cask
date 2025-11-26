cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.32"
  sha256 arm:   "6d52a969d320c45667872e6538160258bb78cfb7898949b9303115388a7542eb",
         intel: "4556d0ff97c432d86e77f9db9e09730e48dd1442c5818e395b3fa65fb75712df"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/DrawPen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
