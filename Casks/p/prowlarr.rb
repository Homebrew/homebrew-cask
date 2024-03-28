cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0.4361"
  sha256 arm:   "eb5981885362d617d034e71c2ef9d8ec3be9b2183d938f9bb1c35ace671810ba",
         intel: "52bf2bce9fc57337daf9938a1f764ac9b4c1a4ceb67bcde148ad1aec247e7314"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
