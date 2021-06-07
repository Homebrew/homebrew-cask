cask "qcad" do
  version "3.26.4"

if Hardware::CPU.intel?
  if MacOS.version <= :high_sierra
    sha256 "c5d50bc871726244bf9780342e18c5262cfcaf6db553a57d69cb7c65a8e0089b"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  else
    sha256 "cf1ac7f91fad40b0ce3698c7f0b0f2b36baa61ba4c865d5d276f3890f3ba92cb"
    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.14-11.2.dmg"
  end
else
  sha256 "d40991de1500d706aee8e3fc33e1ce6042f7a10adbabaefa73a3463e38a79fac"
  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-11.0-11.2-arm64.dmg"
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
