cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.53.2"
  sha256 arm:   "0be7a6949a443f40ad0ba8ac14e6a6cb743a95a697d801d806f3b3999fc975dc",
         intel: "3abb45caeee98a1e50ee7c037e1564756a730cbb8df34ebb0ee17d71e1f218e3"

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
