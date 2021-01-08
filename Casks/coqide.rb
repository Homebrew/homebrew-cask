cask "coqide" do
  version "8.13.0"
  sha256 "fa02786729169e8a86f478839088a2c045a3e18a4ac6b5339a23558c3aef72fb"

  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg",
      verified: "github.com/coq/coq/"
  appcast "https://github.com/coq/coq/releases.atom"
  name "Coq"
  homepage "https://coq.inria.fr/"

  depends_on macos: ">= :sierra"

  app "CoqIDE_#{version.major_minor_patch}.app"
end
