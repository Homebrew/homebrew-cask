cask "deeper" do
  if MacOS.version <= :mojave
    version "2.4.8"
    sha256 "13dbe7bd680963aca91c40a4fd1e16648b63538f3213692db22dd91a3e3f2c89"
  elsif MacOS.version <= :catalina
    version "2.6.0"
    sha256 "302c91c7995364bd02b71613ed440c1480d905637ba02da661cc4e53402643b3"
  else
    version "2.6.7"
    sha256 "b0df372aee8eefb3d83542723e3b37225f23c3a8162eef1744d0035b9e32ca97"
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/Deeper.dmg"
  name "Deeper"
  desc "Tool to enable and disable hidden functions of Finder and other apps"
  homepage "https://www.titanium-software.fr/en/deeper.html"

  livecheck do
    url :homepage
    regex(/>\s*Deeper\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
    :yosemite,
    :el_capitan,
    :sierra,
    :high_sierra,
    :mojave,
    :catalina,
    :big_sur,
  ]

  app "Deeper.app"
end
