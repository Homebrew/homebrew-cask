cask "coqide" do
  version "8.12.0"
  sha256 "be5bf7b8009e0693f5da35437a901c58a924c12c9464c5be3ff1ed3ebe495697"

  # github.com/coq/coq/ was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast "https://github.com/coq/coq/releases.atom"
  name "Coq"
  homepage "https://coq.inria.fr/"

  depends_on macos: ">= :sierra"

  app "CoqIDE_#{version.major_minor_patch}.app"
end
