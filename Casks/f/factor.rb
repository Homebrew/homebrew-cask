cask "factor" do
  version "0.98"
  sha256 "045847b1cf01e1dda270b834c34effd796ce52da40ada8e2fe52b55e3358db17"

  url "https://downloads.factorcode.org/releases/#{version}/factor-macosx-x86-64-#{version}.dmg"
  name "Factor"
  desc "Programming language"
  homepage "https://factorcode.org/"

  livecheck do
    url "https://downloads.factorcode.org/releases/"
    regex(%r{href=.*?(\d+(?:\.\d+)+)/}i)
  end

  suite "factor"

  caveats do
    path_environment_variable "#{appdir}/factor"
  end
end
