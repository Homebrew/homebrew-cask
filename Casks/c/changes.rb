cask "changes" do
  version "2.4"
  sha256 "c44227da1c465dd901c04eff944a88a40a37e0ea6036d3c1e7428357f51b50cf"

  url "https://github.com/maoyama/Changes/releases/download/v#{version}/Changes.zip"
  name "Changes"
  desc "Git GUI"
  homepage "https://github.com/maoyama/Changes"

  depends_on macos: :tahoe

  app "Changes.app"

  zap trash: [
    "~/Library/Caches/dev.aoyama.changes",
    "~/Library/HTTPStorages/dev.aoyama.changes",
  ]
end
