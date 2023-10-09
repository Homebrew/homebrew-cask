cask "orange" do
  version "3.36.1"
  sha256 "439e969b54b599e1b3b086f901f7dc071f07083bafe38b3eab084dbe9d62a794"

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
