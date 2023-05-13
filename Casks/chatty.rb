cask "chatty" do
  version "0.24.1"
  sha256 "39605e90c413f9ec998a0a5cb7b2bae3f369bec2a5328b549c56f50d27cb3a1d"

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
