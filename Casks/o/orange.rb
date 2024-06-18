cask "orange" do
  arch arm: "arm64", intel: "x86_64"

  version "3.37.0"
  sha256 arm:   "df30efed58362e5c4b7a6e49fb03ee4527188ac4b6644aa6fe46484880bf9b13",
         intel: "0b6197229b884ca4ed3ec19f9aecca35acd204ef96183d020e18bc1c27ed0027"

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
