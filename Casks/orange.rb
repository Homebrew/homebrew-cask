cask "orange" do
  version "3.33.0"
  sha256 "8ec56a4f8823629ebc38bde82becbd788e2237558f458d2dfc6fd9e6bb370a49"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.8.8.dmg",
      verified: "download.biolab.si/download/"
  name "Orange"
  desc "Component-based data mining software"
  homepage "hhttps://orangedatamining.com/"

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
