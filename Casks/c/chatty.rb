cask "chatty" do
  version "0.28"
  sha256 "0a6def5121c07d10823969e3cb0d201d934de6a0bdecde7e068672705e5c7f7c"

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
