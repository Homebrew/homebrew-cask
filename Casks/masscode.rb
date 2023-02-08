cask "masscode" do
  arch arm: "-arm64"

  version "3.5.0"
  sha256 arm:   "005bf5b9b8ee1921ccf7236c9db67684beed23fb31b41e0d5134921a69d9e08c",
         intel: "267c8fc05fe069fdaea182df49ac3aded7e7dee1b28a0681f0675a79ed12df93"

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
