cask "gaphor" do
  arch arm: "arm", intel: "intel"

  version "3.3.1"
  sha256 arm:   "3fa7aa35f41081f5e3868dbb7778e58ada71d7678fff144cbd50ab0808e97f99",
         intel: "ec315358592b2d6193b0cf540b631510d1b8aa9712ca5879f24883ce602ff56c"

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}-#{arch}.dmg",
      verified: "github.com/gaphor/gaphor/"
  name "Gaphor"
  desc "UML/SysML modelling tool"
  homepage "https://gaphor.org/"

  depends_on :macos

  app "Gaphor.app"

  uninstall quit: "Gaphor-#{version}"

  zap trash: [
    "~/.cache/gaphor",
    "~/.local/share/gaphor",
  ]
end
