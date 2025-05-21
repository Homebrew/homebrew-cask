cask "gaphor" do
  arch arm: "arm", intel: "intel"

  version "3.1.0"
  sha256 arm:   "9772e9dfa42502d910f258fe9babc26837e952476a871d14c094c7af58dc8e29",
         intel: "a59c7627ed62530ab232e60f30838d90ad83b84a4bf1f9b7e873a381696991b1"

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
