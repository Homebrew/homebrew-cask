cask "flameshot" do
  arch arm: "arm64", intel: "intel"

  version "13.2.0"
  sha256 arm:   "25d9268efbb60013f3f3c4c67be4a3fee35055a1b2db5c86368ed79c44544ad9",
         intel: "7e52f48f7771b0a358cada01c38fae1a9c34ae870eb4f6e44925852bb2094808"

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
