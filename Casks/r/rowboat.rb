cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "83934337571d337e8148f08b6797cc2091077c8d758ad25d0e408c05f9a12ea9",
         intel: "d79251bc58052430bd1fe3aef8c1521129d4cabddeb9aae7e0151c3b5b36880a"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
