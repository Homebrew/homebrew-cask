cask "finicky" do
  version "4.1.0"
  sha256 "a142dfd14f81ce506f2f56fb4be9d44ba2ec7b8db5a969af0b7b640753c63186"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.dmg"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Finicky.app"

  zap trash: "~/Library/Preferences/net.kassett.finicky.plist"
end
