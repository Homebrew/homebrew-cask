cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.46"
  sha256 arm:   "fad196cbd97c71ab15151aa6599a093040e81042d8bcee36f20934808ee70c6a",
         intel: "bf6cb537f5a1409741991715b2bed0afaff8d82dff9e2def869582ca44c3fa1f"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-#{arch}.dmg"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[a-z]?)(?:[._-]release)?$/i)
    strategy :github_latest
  end

  # The container is incorrectly detected as a generic archive
  depends_on :macos
  container type: :dmg

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
