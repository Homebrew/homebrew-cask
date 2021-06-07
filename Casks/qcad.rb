cask "qcad" do
  version "3.26.4"

  if MacOS.version <= :high_sierra
    sha256 "d1c06bf0f2fc7df0bbe2f428e159c7aa12f13537141bc69d8e5dee1c793047b6"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 "cf1ac7f91fad40b0ce3698c7f0b0f2b36baa61ba4c865d5d276f3890f3ba92cb"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-11.2.dmg"
  end

  name "QCAD"
  desc "Free, open source application for computer aided drafting in 2D"
  homepage "https://www.qcad.org/"

  livecheck do
    url "https://www.qcad.org/en/download"
    strategy :page_match
    regex(%r{href=.*?/qcad-(\d+(?:\.\d+)*)-trial-macos-10\.14-11\.2\.dmg}i)
  end

  app "QCAD.app"
end
