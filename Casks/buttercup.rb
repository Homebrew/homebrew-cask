cask "buttercup" do
  version "2.3.0"
  sha256 "d2bed34b11a009f69bce325d275266e4a4b12c9f8521f455ae6927c72cc27da2"

  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-mac-x64-#{version}.dmg",
      verified: "github.com/buttercup/buttercup-desktop/"
  name "Buttercup"
  desc "Javascript Secrets Vault - Multi-Platform Desktop Application"
  homepage "https://buttercup.pw/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Buttercup.app"
end
