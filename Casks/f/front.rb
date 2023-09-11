cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.44.15"
  sha256 arm:   "fa818a0bb63abd8642f5840a3281378eacf09871ab3923191ff03b1926213a8c",
         intel: "bb016167c82a0d28f97d6940f4aafde57cd0cd04f4adaeebbef220301957d09f"

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
