cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.29.0"
  sha256 arm:          "168e80b3637519b26255297957c76d08af39f6f8fa0c11b3c22556e7a2561428",
         x86_64:       "3e04ca70f189be32e770ef089f79bcd4cb99016f1371d20db503697ae7e13f61",
         x86_64_linux: "c75f19f29ee969cfcd337c47203de43e6b8ca28ffbbf9edaa040e7033481389c",
         arm64_linux:  "baca96af0f2ac346124f399ff8f8d08d3aed5a9d095b5a2f02e3a181ced6e0bd"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/wesm/agentsview/releases/download/v#{version}/AgentsView_#{version}_#{arch}#{url_end}",
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
    app_image "AgentsView_#{version}_#{arch}.AppImage", target: "AgentsView.AppImage"
  end
end
