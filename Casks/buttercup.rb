cask "buttercup" do
  version "2.0.1"
  sha256 "fb7b4f057224bb1ac9d9b4c21cf8db0a66e0c6e6c024d7b6de15f25b008e56fc"

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
