cask "orange" do
  version "3.29.1"
  sha256 "52d61e1a9c123b341b90c6711ecd579023e03303419a64d373355db73b0f7e42"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.8.8.dmg"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orange.biolab.si/"

  livecheck do
    url "https://github.com/biolab/orange3"
    strategy :git
  end

  app "Orange#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Orange",
    "~/Library/Caches/Orange",
    "~/Library/Logs/Orange",
    "~/Library/Saved Application State/si.biolab.orange.savedState",
  ]
end
