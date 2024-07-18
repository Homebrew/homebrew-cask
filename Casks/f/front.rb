cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.57.4"
  sha256 arm:   "345c1d5abd4dfd5f6c4ac5fba85cb966160b2aad6908cf9d0567911f3ed404ee",
         intel: "1dcc5984f100351b124ec406298ede1b3001a400b6294bb1976678022a3261cf"

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
