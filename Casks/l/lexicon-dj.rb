cask "lexicon-dj" do
  arch arm: "aarch64", intel: "amd64"

  version "1.11.6"
  sha256 arm:   "ff9315afb239d50e60ed96a52200bd2b0b8e35ee72771944ae3c8e6404c330c8",
         intel: "1429cdc8d7eb34ec95e4a18edb80f406b38fbc79404266998952f5ebdc457451"

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
