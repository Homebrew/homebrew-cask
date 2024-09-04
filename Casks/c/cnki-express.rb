cask "cnki-express" do
  arch arm: "-arm64"

  version "0.2.34"
  sha256 arm:   "87a18bef8e603c41549f744ce055b2dc2d05b526e793f7981f0dd788c6c4ea92",
         intel: "9749276a7b2329dd0372e8341bf358a364cf01a96a848fcb1fa3fd1b195d9b37"

  url "https://download.cnki.net/cnkiexpress/%E5%85%A8%E7%90%83%E5%AD%A6%E6%9C%AF%E5%BF%AB%E6%8A%A5-#{version}#{arch}.dmg"
  name "CNKI EXPRESS"
  name "全球学术快报"
  desc "Academic information access platform"
  homepage "https://m.cnki.net/mcnkidown/index.html"

  livecheck do
    url :url
    strategy :extract_plist do |item|
      item["com.cnki.cnkiexpress"]&.short_version
    end
  end

  depends_on macos: ">= :el_capitan"

  app "全球学术快报.app"

  # No zap stanza required
end
