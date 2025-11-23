cask "flameshot" do
  arch arm: "arm64", intel: "intel"

  version "13.3.0"
  sha256 arm:   "ecf0d815b5b4c0a55f896d67c4cf74c49816ccb20acf9df715a3cd893e0184e7",
         intel: "c549e5687ae32d3f6a48badbd1fedac6bbba659ec16f44a0f1bf56a8dec20fd2"

  on_arm do
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    depends_on macos: ">= :ventura"
  end

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

  app "flameshot.app"

  uninstall quit: "org.flameshot.flameshot"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
