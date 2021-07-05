cask "orange" do
  version "3.29.3"
  sha256 "81a01ae6dd87649a2a27714ed9de1cb9d6e077008c9c5b33fd88971742cb4a4e"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.8.8.dmg"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orange.biolab.si/"

  livecheck do
    url "https://github.com/biolab/orange3"
  end

  app "Orange#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Orange",
    "~/Library/Caches/Orange",
    "~/Library/Logs/Orange",
    "~/Library/Saved Application State/si.biolab.orange.savedState",
  ]
end
