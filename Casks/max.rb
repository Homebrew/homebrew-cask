cask "max" do
  if MacOS.version <= :mojave
    version "0.9.1"
    sha256 "722bf714696d3d39329ba98ffddc9f117f8cc6863f71670507cd12f62a5e5f14"

    url "https://files.sbooth.org/Max-#{version}.tar.bz2"

    app "Max-#{version}/Max.app"
  else
    version "0.9.2b4"
    sha256 "4d3d96f2e3fc2f52fc3c7cbeb260be749975665e38f643089d2e3fdb58b8f82b"

    url "https://files.sbooth.org/Max-#{version}.dmg"

    app "Max.app"
  end

  name "Max"
  desc "Creats high-quality audio files in various formats, from CDs or files"
  homepage "https://sbooth.org/Max/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Max-(\d+(?:\.\d+)*b\d+)\.dmg}i)
  end

  zap trash: "~/Library/Preferences/org.sbooth.Max.plist"
end
