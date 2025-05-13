cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.65.1"
  sha256 arm:   "2f5f8a488a6df8b5bd97e636efc159f6d832ec1610ab093bcf226eb1f79f2580",
         intel: "240002380a91c2ce133dc3bdab557592c154b04e60c4b9473e9c8c059f84bda8"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
