cask "orange" do
  arch arm: "arm64", intel: "x86_64"

  version "3.38.0"
  sha256 arm:   "69a5e1875699999beb1cd3481c6b113ec4f52dfe30f64794c10307d7a6596c9f",
         intel: "b3f789745267040badf53459a96527abed526803655795d5f4d1af3350af10be"

  on_arm do
    url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.11.8-#{arch}.dmg",
        verified: "download.biolab.si/download/"

    app "Orange.app"
  end
  on_intel do
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
