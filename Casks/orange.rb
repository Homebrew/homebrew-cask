cask "orange" do
  version "3.34.0"
  sha256 "d27bf04355c1791625e89b1960497d85923c04b3445d92a68e946b1755fa8259"

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
