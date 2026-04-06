cask "jamie" do
  version "5.6.38"
  sha256 "6c44acf0073ccb5d3ad6b781040279cffc3d9d8ba84cf436d2f586ca4b4aa73a"

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
  depends_on macos: ">= :sonoma"

  app "Jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
