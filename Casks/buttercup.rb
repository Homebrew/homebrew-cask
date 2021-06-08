cask "buttercup" do
  version "2.8.0"
  sha256 "2a407a094eb21bc7a8304a41883a033bec3e470eecff8965895957d8fac71c3a"

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
