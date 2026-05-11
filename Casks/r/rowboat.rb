cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "c6cf0e593d0678577f0a9bc78132c79d16ed5288c2771581a263b41a351255df",
         intel: "bd7abaf271f253c010440640d6cdab7f261deaf805d6c699b34421bf0316cb41"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
