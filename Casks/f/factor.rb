cask "factor" do
  version "0.102"
  sha256 "30eef67f68232453761f56162510ed96cc020e7bde16ddb244077042c7564faf"

  url "https://downloads.factorcode.org/releases/#{version}/factor-macos-x86-64-#{version}.dmg"
  name "Factor"
  desc "Programming language"
  homepage "https://factorcode.org/"

  livecheck do
    url "https://downloads.factorcode.org/releases/"
    regex(%r{href=.*?(\d+(?:\.\d+)+)/}i)
  end

  depends_on :macos

  suite "factor"

  caveats do
    path_environment_variable "#{appdir}/factor"
    requires_rosetta
  end
end
