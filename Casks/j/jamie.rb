cask "jamie" do
  version "5.7.5"
  sha256 "572ceddeb489a34fdbd645097d954d0e16de8d0c41473721e0206989c8aeceac"

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
