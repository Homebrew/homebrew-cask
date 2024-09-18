cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.213"
  sha256 arm:   "6565b146aaa7a657c74ff7e6f8731ff4be85a769a75697f1d348e0747f493398",
         intel: "4233a82ec6538690b520bad9e107f8740827fb6af38294879562967f33e84e73"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Tabby.app"

  zap trash: [
    "~/Library/Application Support/tabby",
    "~/Library/Preferences/org.tabby.helper.plist",
    "~/Library/Preferences/org.tabby.plist",
    "~/Library/Saved Application State/org.tabby.savedState",
    "~/Library/Services/Open Tabby here.workflow",
    "~/Library/Services/Paste path into Tabby.workflow",
  ]
end
