cask "buttercup" do
  version "2.2.0"
  sha256 "2ff74763520a0eeab877a65418d044e0843a2836f724e296e218fffbf7c0cf32"

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
