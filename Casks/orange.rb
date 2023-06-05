cask "orange" do
  version "3.35.0"
  sha256 "053bfb5b3d377eaa11d4b29eaf3a870f759f4de8890f0e2a78d96c6f41b4abc1"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.9.12.dmg",
      verified: "download.biolab.si/download/"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orangedatamining.com/"

  livecheck do
    url "https://orangedatamining.com/download/#macos"
    regex(/Orange#{version.major}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Orange#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Orange",
    "~/Library/Caches/Orange",
    "~/Library/Logs/Orange",
    "~/Library/Saved Application State/si.biolab.orange.savedState",
  ]
end
