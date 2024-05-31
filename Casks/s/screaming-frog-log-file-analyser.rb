cask "screaming-frog-log-file-analyser" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3"
  sha256 arm:   "1209f758cf85434f85a846092b0285b59bda61013629222fb0c94bfed53746e5",
         intel: "59d7ea1ad122f1d91d0518e060db2220db616db4c0d89b6a34e3ebfff0e76a0e"

  url "https://download.screamingfrog.co.uk/products/log-file-analyser/ScreamingFrogLogFileAnalyser-#{version}-#{arch}.dmg"
  name "Screaming Frog Log File Analyser"
  desc "SEO log audit tool"
  homepage "https://www.screamingfrog.co.uk/log-file-analyser/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ScreamingFrogLogFileAnalyser[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "Screaming Frog Log File Analyser.app"

  zap trash: [
    "~/.ScreamingFrogLogfileAnalyser",
    "~/Library/Application Support/uk.co.screamingfrog.ui.b",
  ]
end
