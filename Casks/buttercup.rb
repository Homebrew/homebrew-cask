cask "buttercup" do
  version "2.8.3"
  sha256 "97ed5aba19e3d4c21ce089723213896febe618e344c20966ef81ed5f68de3cc9"

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
