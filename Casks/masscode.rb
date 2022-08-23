cask "masscode" do
  arch arm: "-arm64"

  version "3.4.0"
  sha256 arm:   "4822c7842bb73174c8edc96e08968cd85e437ef828acba109bab3329d65dc014",
         intel: "d91eb25fa095837ddc3b975e2dc0ef097d3a375bee9bccaf5a04384f7a90f92d"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "https://github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "massCode.app"
end
