cask "coqide" do
  version "8.12.1"
  sha256 "ea7a72413062d295bb315a2485a80e35643f624ffa18f1e2e0aa83e7faee3797"

  # github.com/coq/coq/ was verified as official when first introduced to the cask
  url "https://github.com/coq/coq/releases/download/V#{version.major_minor_patch}/coq-#{version}-installer-macos.dmg"
  appcast "https://github.com/coq/coq/releases.atom"
  name "Coq"
  homepage "https://coq.inria.fr/"

  depends_on macos: ">= :sierra"

  app "CoqIDE_#{version.major_minor_patch}.app"
end
