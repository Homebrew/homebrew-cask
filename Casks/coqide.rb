cask "coqide" do
  version "8.13.0"
  sha256 "718fc214d2b36bae440942e8a2615c4f9ab84545b505c7d421e17b742bbdd1b8"

  url "https://github.com/coq/coq/releases/download/V#{version}/coq-#{version}-installer-macos.dmg",
      verified: "github.com/coq/coq/"
  appcast "https://github.com/coq/coq/releases.atom"
  name "Coq"
  desc "Formal proof management system"
  homepage "https://coq.inria.fr/"

  depends_on macos: ">= :sierra"

  app "CoqIDE_#{version.major_minor_patch}.app"
end
