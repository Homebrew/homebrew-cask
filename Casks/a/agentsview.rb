cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.32.0"
  sha256 arm:          "1bdd3e6a3288e756ea1971da88d62cff65c015af30e6f573402e281329af986c",
         x86_64:       "1e643f5ced6db53c025e06f778894c0323f45f33b1b4c220599a78556ac78067",
         x86_64_linux: "e1f4878db005ba331ef2df90015ef911bb0a0cd8b992c846e8dbdb1c61c25437",
         arm64_linux:  "013f88af95c36dae23c6481f895b745cb8a88fae3e33cc0f782a395cfcbca1cf"

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
