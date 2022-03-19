cask "brackets" do
  version "2.0.1"
  sha256 "2aa93fc36011bea42554ec3c118f4e1c5d5518b92094b89b57c20f5ba1a1ec66"

  url "https://github.com/brackets-cont/brackets/releases/download/v#{version}/Brackets.#{version}.signed.dmg",
      verified: "github.com/brackets-cont/brackets/"
  name "Brackets"
  desc "Open-source code editor for web-developement"
  homepage "https://brackets.io/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Brackets\.(\d+(?:\.\d+)+)\.signed.dmg}i)
  end

  app "Brackets.app"

  zap trash: [
    "~/Library/Application Support/Brackets",
    "~/Library/Preferences/io.brackets.appshell.plist",
  ]
end
