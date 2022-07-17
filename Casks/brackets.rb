cask "brackets" do
  version "2.1.2"
  sha256 "6399d43315e0c8921c11d27325b697d26d8a524bfc1455a83173a13a6c6048a2"

  url "https://github.com/brackets-cont/brackets/releases/download/v#{version}-release/brackets.#{version}.dmg",
      verified: "github.com/brackets-cont/brackets/"
  name "Brackets"
  desc "Open-source code editor for web-developement"
  homepage "https://brackets.io/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/brackets\.(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Brackets.app"

  zap trash: [
    "~/Library/Application Support/Brackets",
    "~/Library/Preferences/io.brackets.appshell.plist",
  ]
end
