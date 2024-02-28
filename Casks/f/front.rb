cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.49.2"
  sha256 arm:   "34f0fda292ce0fd97fc99aa13ff5b3435c439eb1d3f8b9e26b20ade8fde484ee",
         intel: "bb9aafe00f8466c61001c139beb8cd68e48a764c42d40fe48e85d16bcc31b15b"

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
