cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.58.0"
  sha256 arm:   "025fe4bc7b3b8d90626febb4ec6faadbbf83f358b12a5a4559751a6f88b412ca",
         intel: "0d1efb43de671620a8cb0c7c81936e8d27c97c30ca08f04cbc4a3cf398e81d35"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
