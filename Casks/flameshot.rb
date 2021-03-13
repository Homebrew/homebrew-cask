cask "flameshot" do
  version "0.9.0"
  sha256 "fb593aaf5f060c323207eaf33444b9a6e5e2dd62734f71367876104ff35a9d03"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/flameshot.dmg", verified: "github.com/flameshot-org/flameshot"
  name "Flameshot"
  desc "Powerful yet simple to use screenshot software"
  homepage "https://flameshot.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "flameshot.app"
end
