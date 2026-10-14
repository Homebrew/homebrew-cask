cask "factor" do
  arch arm: "arm-64", intel: "x86-64"

  version "0.102"
  sha256 arm:   "d0ee7ac4934b6b6c7755f026d8e82e8669e75dd9e41f95f71a1e02912ca8ef95",
         intel: "30eef67f68232453761f56162510ed96cc020e7bde16ddb244077042c7564faf"

  url "https://downloads.factorcode.org/releases/#{version}/factor-macos-#{arch}-#{version}.dmg"
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
  end
end
