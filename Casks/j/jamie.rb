cask "jamie" do
  version "5.7.3"
  sha256 "923363ea48b86bc5578a424c9c73b50df1d37420ae34343cb3072a7b144be3bb"

  url "https://github.com/meetjamie/releases/releases/download/app-v#{version}/Jamie_universal.app.tar.gz",
      verified: "github.com/meetjamie/releases/"
  name "Jamie"
  desc "AI-powered meeting notes"
  homepage "https://www.meetjamie.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
