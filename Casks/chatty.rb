cask "chatty" do
  version "0.24"
  sha256 "8ecdf454c856acddccbd231ddf96cf7c203bd5efcd0c23dc537e2ff8f8d0b25f"

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
