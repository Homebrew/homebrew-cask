cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.3"
  sha256 arm:   "2970574f4054f8686f855d6126ef2b28876bda58d651ccc9f78cb9090dfe709f",
         intel: "11b4511666b6a7753ce38947e3e1ce27bc1b49860fbe7a0657b3c50b933c6d5c"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
  end

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
  depends_on :macos

  app "Lexicon.app"

  zap trash: "~/Library/Application Support/Lexicon"
end
