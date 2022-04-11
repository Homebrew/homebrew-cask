cask "chatty" do
  version "0.18"
  sha256 "11b478aa27b15175eb8214423b005d5482e8a853300773d71df289e7054517dc"

  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip",
      verified: "github.com/chatty/chatty/"
  name "Chatty"
  desc "Twitch chat client"
  homepage "https://chatty.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  suite "Chatty"

  preflight do
    # There is no sub-folder in the ZIP; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("Chatty").tap(&:mkpath))
  end

  zap trash: "~/.chatty"

  caveats do
    depends_on_java "7+"
  end
end
