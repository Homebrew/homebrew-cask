cask "coqide" do
  version "8.12.2"
  sha256 "6cc8417d5b90d823752e142561da677ceac94ab5cbfc5e14acad363c7aab46fc"

  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg",
      verified: "github.com/coq/coq/"
  appcast "https://github.com/coq/coq/releases.atom"
  name "Coq"
  homepage "https://coq.inria.fr/"

  depends_on macos: ">= :sierra"

  app "CoqIDE_#{version.major_minor_patch}.app"
end
