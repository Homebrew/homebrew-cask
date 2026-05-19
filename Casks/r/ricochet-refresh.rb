cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.42"
  sha256 arm:   "35f9e0583797770344f0ea33aded1a499542c3f6acd7e778927e1a144160cf7e",
         intel: "bb8ef186db1ceb612f2635b9afd54d7eaf5908d5079c10450953fd34c74f3396"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-#{arch}.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
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
