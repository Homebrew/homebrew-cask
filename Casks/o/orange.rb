cask "orange" do
  arch arm: "arm64", intel: "x86_64"

  version "3.41.0"
  sha256 arm:   "5aaed153d297369748ad12acfcab892809bc611003e8a5fde6662b9bb5c30df9",
         intel: "1594b4c043c7af0e25a3e13b9e5ac61fe1db48192f5e2e8552b602a2cbc9e5bf"

  on_arm do
    app "Orange.app"
  end
  on_intel do
    app "Orange#{version.major}.app"
  end

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.13.17-#{arch}.dmg"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orangedatamining.com/"

  livecheck do
    url "https://orangedatamining.com/download/#macos"
    regex(/Orange#{version.major}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on :macos

  uninstall quit: "si.biolab.orange"

  zap trash: [
    "~/Library/Application Support/Orange",
    "~/Library/Caches/Orange",
    "~/Library/Logs/Orange",
    "~/Library/Saved Application State/si.biolab.orange.savedState",
  ]
end
