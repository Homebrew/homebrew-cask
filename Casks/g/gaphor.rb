cask "gaphor" do
  arch arm: "arm", intel: "intel"

  version "2.27.0"
  sha256 arm:   "22977a35ae01a410a1a15cffa85867dd35d718db9753d0f3615d427b6fc0059a",
         intel: "17f6dcb0f862658d5ba08bff6a5e4ed1d1b36fd9232a4601b5b5a751f4289028"

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
