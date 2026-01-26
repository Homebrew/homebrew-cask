cask "factor" do
  version "0.101"
  sha256 "eef0fa3e4a13506c3ba587d2728746f58e2645bbdcde2e60c676b327a8bd916f"

  url "https://downloads.factorcode.org/releases/#{version}/factor-macos-x86-64-#{version}.dmg"
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
    requires_rosetta
  end
end
