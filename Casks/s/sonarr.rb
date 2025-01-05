cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.12.2823"
  sha256 arm:   "2366c7809b1c8ccf3e71b5bd9d2b27310db85811376a3c80701618cc07dfdeb5",
         intel: "483a9f33d6627f9943aa1dff21f92b5df2cc268c1990b454682b0797d7ccad7e"

  url "https://github.com/Sonarr/Sonarr/releases/download/v#{version}/Sonarr.main.#{version}.osx-#{arch}-app.zip",
      verified: "github.com/Sonarr/Sonarr/"
  name "Sonarr"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "sonarr@beta"
  depends_on macos: ">= :catalina"

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
