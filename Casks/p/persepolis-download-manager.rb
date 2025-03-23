cask "persepolis-download-manager" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "034d6e29e1fee7f2f06b984d37c70a345ff15bb1525bcf43ef4303082dab84fe",
         intel: "73bd1abdffbed3b7170c7f8567d2d4a3ba292250805021cdd01acf3e736109ab"

  url "https://github.com/persepolisdm/persepolis/releases/download/#{version}/persepolis_#{version}_macos_#{arch}.dmg",
      verified: "github.com/persepolisdm/persepolis/"
  name "Persepolis"
  desc "Download manager"
  homepage "https://persepolisdm.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Persepolis Download Manager.app"

  zap trash: [
    "~/.persepolis",
    "~/Library/Application Support/persepolis_download_manager",
  ]
end
