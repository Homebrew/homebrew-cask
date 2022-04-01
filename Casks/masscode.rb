cask "masscode" do
  version "1.3.1"
  sha256 "e97324388b26e916e81a16ffc8433e0dd8e31baf62e6d79d1c8f15788b6cc326"

  url "https://github.com/antonreshetov/massCode/releases/download/v#{version}/massCode-#{version}.dmg",
      verified: "github.com/antonreshetov/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  app "massCode.app"
end
