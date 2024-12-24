cask "orange" do
  arch arm: "arm64", intel: "x86_64"

  version "3.38.1"
  sha256 arm:   "a4ed5c7f823fb72fa2ec578318e971ef3aa274b10bdccbc5dba93958948c0d16",
         intel: "6ab7f0e77b3578f27b6beae0df26d9b60b28e7d9e697a0844a4ad3f0de8dc1c7"

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
