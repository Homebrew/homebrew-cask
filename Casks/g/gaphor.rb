cask "gaphor" do
  arch arm: "arm", intel: "intel"

  version "3.3.0"
  sha256 arm:   "360bb8bfba18a53199b535c2e257a8ddffe1bc6b1013a37421645f9b48e53d10",
         intel: "1e2dbfe8c48a4b00070c17eac16afe062152c16e86d0c7717345630b07365660"

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}-#{arch}.dmg",
      verified: "github.com/gaphor/gaphor/"
  name "Gaphor"
  desc "UML/SysML modelling tool"
  homepage "https://gaphor.org/"

  app "Gaphor.app"

  uninstall quit: "Gaphor-#{version}"

  zap trash: [
    "~/.cache/gaphor",
    "~/.local/share/gaphor",
  ]
end
