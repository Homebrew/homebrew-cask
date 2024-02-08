cask "orange" do
  version "3.36.2"
  sha256 "0307bb30a583dc30a2a1e08802a83916b82b50032e77c62ec3cdcd09ce81ba70"

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
