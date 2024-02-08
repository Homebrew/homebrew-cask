cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.48.6"
  sha256 arm:   "209307d6185865e8379538a34ad999a5d415023a8648b3c9bf4ce5d07ae9ec5c",
         intel: "9cd0871a94a49464187ae6b7bcac1d9ed3d333adc3afcb8d4e4738dc2978add2"

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
