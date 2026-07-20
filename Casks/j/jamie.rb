cask "jamie" do
  version "5.7.8"
  sha256 "ea33739a4f08b6966a75ddcbc3b294e7a68e5ec9323312e457f03dd9f4490935"

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
