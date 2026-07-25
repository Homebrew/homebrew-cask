cask "changes" do
  version "2.3"
  sha256 "576b77ccb39213141bf3225753179d5f234f172386d918ff3c00867396ae4f63"

  url "https://github.com/maoyama/Changes/releases/download/v#{version}/Changes.zip"
  name "Changes"
  desc "Git GUI"
  homepage "https://github.com/maoyama/Changes"

  depends_on macos: :tahoe

  app "Changes.app"

  zap trash: [
    "~/Library/Caches/dev.aoyama.changes/",
    "~/Library/HTTPStorages/dev.aoyama.changes/",
  ]
end
