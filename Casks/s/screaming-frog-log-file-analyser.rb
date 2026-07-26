cask "screaming-frog-log-file-analyser" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.1"
  sha256 arm:   "911b40730adc5450f0c360def36df9cf9b896b014d23308524838b2f840fb883",
         intel: "9e3d82746769bab0243b0c9616a5338074ef59e7d4aabd6f52c72323c5682a7a"

  url "https://download.screamingfrog.co.uk/products/log-file-analyser/ScreamingFrogLogFileAnalyser-#{version}-#{arch}.dmg"
  name "Screaming Frog Log File Analyser"
  desc "SEO log audit tool"
  homepage "https://www.screamingfrog.co.uk/log-file-analyser/"

  # The homepage links to the latest dmg files but Cloudflare protections
  # prevent us from fetching it, so it must be checked manually.
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: :big_sur

  app "Screaming Frog Log File Analyser.app"

  zap trash: [
    "~/.ScreamingFrogLogfileAnalyser",
    "~/Library/Application Support/uk.co.screamingfrog.ui.b",
  ]
end
