cask "ricochet-refresh" do
  version "3.0.13"
  sha256 "efdf07d361ddfe3f950175133c337d7f40c9022a1a3ccd560fd7e200b0cb0895"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-x86_64.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url "https://github.com/blueprint-freespeech/ricochet-refresh/releases"
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)[-"' >]}i)
  end

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
