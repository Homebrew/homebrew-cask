cask "factor" do
  version "0.100"
  sha256 "b7d23ce03b22eb74d40b1690803494c247c8a16b24a5add05d2eef5a0a946914"

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
