cask "screaming-frog-log-file-analyser" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4"
  sha256 arm:   "5420b56a7ba0b5ff3fdd5c6ad459c189d585f49102518fa86b0278d144ca4abc",
         intel: "56d5efef845c263d73d438cdce0df7f5cd328cef82301b3bdc997607da22f06f"

  url "https://download.screamingfrog.co.uk/products/log-file-analyser/ScreamingFrogLogFileAnalyser-#{version}-#{arch}.dmg"
  name "Screaming Frog Log File Analyser"
  desc "SEO log audit tool"
  homepage "https://www.screamingfrog.co.uk/log-file-analyser/"

  # The homepage links to the latest dmg files but Cloudflare protections
  # prevent us from fetching it, so it must be checked manually.
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: ">= :big_sur"

  app "Screaming Frog Log File Analyser.app"

  zap trash: [
    "~/.ScreamingFrogLogfileAnalyser",
    "~/Library/Application Support/uk.co.screamingfrog.ui.b",
  ]
end
