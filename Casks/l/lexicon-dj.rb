cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.9.5"
  sha256 arm:   "3f75df74f41702cc7a5c6070e07bb3f4c822533f07a5639cc3eff4113304b2a8",
         intel: "f78d339e9d4ff8c771ea35df24e4b2e648f064db181f25850c7e80cef738e8da"

  url "https://update.rekord.cloud/releases/lexicon/latest/lexicon-#{version}-mac-#{arch}.zip",
      verified: "update.rekord.cloud/releases/lexicon/latest/"
  name "Lexicon"
  desc "Library management for professional DJs"
  homepage "https://www.lexicondj.com/"

  livecheck do
    url "https://update.rekord.cloud/releases/lexicon/latest/appcast-#{arch}.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Lexicon.app"

  zap trash: "~/Library/Application Support/Lexicon"
end
