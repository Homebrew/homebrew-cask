cask "qcad" do
  version "3.26.2"

  if MacOS.version <= :high_sierra
    sha256 "d1c06bf0f2fc7df0bbe2f428e159c7aa12f13537141bc69d8e5dee1c793047b6"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 "46fb356960449ae4addf0ce1555872bad5d1b70aaf8f94c10793f5f61e429695"
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
