cask "changes" do
  version "2.5"
  sha256 "7b1577b8cf34d3eb8cb52154675d32d2876b4b9c5d9d25546b932cb226b04189"

  url "https://github.com/maoyama/Changes/releases/download/v#{version}/Changes.zip"
  name "Changes"
  desc "Git GUI"
  homepage "https://github.com/maoyama/Changes"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Changes.app"

  zap trash: [
    "~/Library/Caches/dev.aoyama.changes",
    "~/Library/HTTPStorages/dev.aoyama.changes",
  ]
end
