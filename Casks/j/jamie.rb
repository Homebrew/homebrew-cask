cask "jamie" do
  version "5.7.7"
  sha256 "51b4478f9948c0a628f89eb100f74c86341db6251aab00048375cf8b8efeeabb"

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
