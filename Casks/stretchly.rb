cask "stretchly" do
  version "1.8.0"
  sha256 "faa5935b06e54ed5c0748f744e31abe49fddd602ee2d2d8f8e6a99dcd23f521b"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
