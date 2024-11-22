cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.62.1"
  sha256 arm:   "7e1f56cd6fe8f4f60b61d53774033b2b022c3b85e8bf5d9f7b263c062a49109c",
         intel: "a4de64f5ac22b0385495badc91a18c17dac174d5f892ea5ea114670f1e401056"

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
