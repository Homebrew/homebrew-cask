cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.40"
  sha256 arm:   "243a35fb6d8f5484b0b8667f6da2feb086e4c03411ec5a1c13d4e48fed81736a",
         intel: "b666035bf725ae2c63392e72ae298078a6de75bfe86401714b610a1ce351f037"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
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
  container type: :dmg

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
