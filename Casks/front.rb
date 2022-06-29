cask "front" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.35.20"

  if Hardware::CPU.intel?
    sha256 "bcbc24dacd4329ff9ff37530d5607304e3cc3daa6d6eb624f526d291c8706c5a"
  else
    sha256 "772116522a179000ee02d770472f713a379ff0e4e4a7105179ec9a6a40875d50"
  end

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
