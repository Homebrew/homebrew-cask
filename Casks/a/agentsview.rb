cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "amd64"
  end

  version "0.29.0"
  sha256 arm:          "168e80b3637519b26255297957c76d08af39f6f8fa0c11b3c22556e7a2561428",
         x86_64:       "3e04ca70f189be32e770ef089f79bcd4cb99016f1371d20db503697ae7e13f61",
         x86_64_linux: "54ba039142f55ddc4c9dd0e7092706ad9fa61731d8d8168e92e410d28d7b5d2c",
         arm64_linux:  "5c43844b5c299ebddfbce39c4a3dd713fe9f3494a149f1aaf16e34658048a999"

  url_end = on_system_conditional linux: "#{os}_#{arch}.tar.gz", macos: "#{arch}.dmg"

  url "https://github.com/wesm/agentsview/releases/download/v#{version}/agentsview_#{version}_#{url_end}",
      verified: "github.com/wesm/agentsview/"
  name "AgentsView"
  desc "Browse, search and analyse your past AI coding sessions"
  homepage "https://www.agentsview.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    app "AgentsView.app"
    binary "#{appdir}/AgentsView.app/Contents/MacOS/agentsview"

    depends_on macos: :big_sur

    zap trash: [
      "~/.agentsview",
      "~/Library/Caches/io.agentsview.desktop",
      "~/Library/WebKit/io.agentsview.desktop",
    ]
  end

  on_linux do
    # TODO: could use AppImage if/when we add support.
    binary "agentsview"
  end
end
