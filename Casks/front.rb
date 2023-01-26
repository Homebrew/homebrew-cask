cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.40.16"
  sha256 arm:   "ae449cb7c20c5374e75860928886dda83ed480793cc1229371c5b9d8ea2c40ec",
         intel: "7c92e9f57ff5e611578b25c5a6d17d766cd4f98ef874d9a20edc6850485d977c"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds"
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
