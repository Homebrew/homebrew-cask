cask "pathephone" do
  version "2.2.1"
  sha256 "94f11a3dfd047aff65fa15430a127e07d733518dd39618a15344fc4738a74806"

  url "https://github.com/pathephone/pathephone-desktop/releases/download/v#{version}/Pathephone-#{version}.dmg",
      verified: "github.com/pathephone/pathephone-desktop/"
  name "Pathephone"
  desc "Distributed audio player"
  homepage "https://pathephone.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pathephone.app"
end
