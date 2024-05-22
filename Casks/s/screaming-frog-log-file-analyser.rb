cask "screaming-frog-log-file-analyser" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.2"
  sha256 arm:   "4735d99ffe2ee8abf53111c05e3838203509e8612f6de989772d6d525c89aa1b",
         intel: "7468431a08a6b2fc0e59a8ecef7c4c8efddf737614b7da91530bdb2491cec3a2"

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
