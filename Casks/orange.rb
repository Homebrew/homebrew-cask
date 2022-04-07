cask "orange" do
  version "3.32.0"
  sha256 "f512e51944ee41e2c75c0a182f77a0cc4d4e2e0306903b582b6a9a61c15fd39e"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.8.8.dmg"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orange.biolab.si/"

  livecheck do
    url "https://download.biolab.si/download/files/"
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
