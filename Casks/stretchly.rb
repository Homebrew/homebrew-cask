cask "stretchly" do
  arch arm: "-arm64"

  version "1.11.0"
  sha256 arm:   "40a40989c3d74dca1e6957be95cc9552e786ebb8fc07685d57e82ba42a7b6b7d",
         intel: "06afceb398eb479d9221333f6f1c5218844565343e653dd9a01b874c0cd13bb7"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"

  caveats <<~EOS
    This application is not signed. See https://github.com/hovancik/stretchly#application-signing for details.
  EOS
end
