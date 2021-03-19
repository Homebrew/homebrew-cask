cask "orange" do
  version "3.27.1"
  sha256 "f175f7562bd1ae34ef8ec4e4bcd9b7090e39b95383a1206cbbd8f18b4828eef2"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.7.6.dmg"
  appcast "https://github.com/biolab/orange3/releases.atom"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orange.biolab.si/"

  app "Orange#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Orange",
    "~/Library/Caches/Orange",
    "~/Library/Logs/Orange",
    "~/Library/Saved Application State/si.biolab.orange.savedState",
  ]
end
