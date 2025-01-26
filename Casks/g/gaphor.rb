cask "gaphor" do
  arch arm: "arm", intel: "intel"

  version "3.0.0"
  sha256 arm:   "6b5e4ca457f95fe8cc51e9d0800c284a44d3a6bf5a2a79587a502a227509b8e9",
         intel: "7b360eb0de30a1171e61d04f8c38ce318f44f7eb6516b3f855c7145e6c9d3f84"

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}-#{arch}.dmg",
      verified: "github.com/gaphor/gaphor/"
  name "Gaphor"
  desc "UML/SysML modelling tool"
  homepage "https://gaphor.org/"

  depends_on macos: ">= :high_sierra"

  app "Gaphor.app"

  uninstall quit: "Gaphor-#{version}"

  zap trash: [
    "~/.cache/gaphor",
    "~/.local/share/gaphor",
  ]
end
