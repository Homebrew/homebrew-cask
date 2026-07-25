cask "screaming-frog-log-file-analyser" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0"
  sha256 arm:   "83d16cfc97c2efebe6f2e085669486b241c0035f087c8e3e68bdbd657350deef",
         intel: "fd645eb07b679e4eded107fca264383dc028e6fa8c5dbd54ec74b84d4caac085"

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
