cask "orange" do
  arch arm: "arm64", intel: "x86_64"

  version "3.39.0"

  on_arm do
    sha256 "ca30cc7e05ca0f17df009485d6b377bcad2f6310c4c1cb887f58450278aeeb46"

    url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.11.8-#{arch}.dmg",
        verified: "download.biolab.si/download/"

    app "Orange.app"
  end
  on_intel do
    sha256 "8ec402992039d97683a44a37d7bd1b9fd508122404e497889861445d919d1582"

    url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.10.11-#{arch}.dmg",
        verified: "download.biolab.si/download/"

    app "Orange#{version.major}.app"
  end

  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orangedatamining.com/"

  livecheck do
    url "https://orangedatamining.com/download/#macos"
    regex(/Orange#{version.major}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  zap trash: [
    "~/Library/Application Support/Orange",
    "~/Library/Caches/Orange",
    "~/Library/Logs/Orange",
    "~/Library/Saved Application State/si.biolab.orange.savedState",
  ]
end
