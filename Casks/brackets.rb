cask "brackets" do
  version "2.2.0"
  sha256 "a8864dd5cc4591d885b0264e88ee2bc9a05962c29369b7c5c1f2f269c50fe1b5"

  url "https://github.com/brackets-cont/brackets/releases/download/v#{version}/brackets.#{version}.dmg",
      verified: "github.com/brackets-cont/brackets/"
  name "Brackets"
  desc "Open-source code editor for web-developement"
  homepage "https://brackets.io/"

  livecheck do
    url :homepage
    regex(/brackets\.(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Brackets.app"

  zap trash: [
    "~/Library/Application Support/Brackets",
    "~/Library/Preferences/io.brackets.appshell.plist",
  ]
end
