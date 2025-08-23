cask "flameshot" do
  arch arm: "arm64", intel: "intel"

  version "13.1.0"
  sha256 arm:   "1e6ec923b95d432ec8fb7222095c47be651adeeb282290ab3fed055c5d710586",
         intel: "6a05c0f00cca3f92aedb4c76d5c191308c2f343e51e58067f9f09f35cf882d94"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/Flameshot-#{version}-artifact-macos-#{arch}.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software with built-in annotation tools"
  homepage "https://flameshot.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :catalina"

  app "flameshot.app"

  uninstall quit: "org.flameshot.flameshot"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
