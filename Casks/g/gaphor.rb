cask "gaphor" do
  arch arm: "arm", intel: "intel"

  version "3.3.1"
  sha256 arm:   "4c25f33900c416d60cb51c19eff0e8e07144e1c9c69c0ecadcb4860aa218edb2",
         intel: "3fa7aa35f41081f5e3868dbb7778e58ada71d7678fff144cbd50ab0808e97f99"

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
