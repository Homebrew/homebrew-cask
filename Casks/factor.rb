cask "factor" do
  version "0.98"
  sha256 "045847b1cf01e1dda270b834c34effd796ce52da40ada8e2fe52b55e3358db17"

  url "https://downloads.factorcode.org/releases/#{version}/factor-macosx-x86-64-#{version}.dmg"
  appcast "https://downloads.factorcode.org/releases/"
  name "Factor"
  homepage "https://factorcode.org/"

  suite "factor"

  caveats do
    path_environment_variable "#{appdir}/factor"
  end
end
