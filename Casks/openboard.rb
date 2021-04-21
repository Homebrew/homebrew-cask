cask "openboard" do
  version "1.5.4"
  sha256 "dd5ce62ae2aaacb3279a17ec31e7708433d0b50c1cd6c21f68b71ef51dac4bbe"

  url "https://github.com/OpenBoard-org/OpenBoard/releases/download/v#{version}/OpenBoard-#{version}-signed.dmg",
      verified: "github.com/OpenBoard-org/OpenBoard/"
  name "OpenBoard"
  homepage "https://openboard.ch/index.en.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenBoard.app"

  zap trash: [
    "~/Music/OpenBoard",
    "~/Movies/OpenBoard",
    "~/Pictures/OpenBoard",
    "~/Library/Application Support/OpenBoard",
  ]
end
