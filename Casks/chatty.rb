cask "chatty" do
  version "0.23"
  sha256 "d8004b568b7b3f22966ff8af62f01001e49e9b0caf85730310bd14c683bf4889"

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
