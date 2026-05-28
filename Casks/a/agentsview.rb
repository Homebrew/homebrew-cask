cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.31.1"
  sha256 arm:          "af453eaf3e40573e75a82907264004fc3c7e04716d83f5517a8061a1491b5e69",
         x86_64:       "f51b7b3f451c866a5411819ec4e2be2362a13dbda6114dfe8c3e241b544145ca",
         x86_64_linux: "f47550dee75a2ef83862a38191b44cc3893c490f3e37c7a4637cacb6e42b607b",
         arm64_linux:  "d21c3a53d32a8ff9dd2614761a0d0026964ab6041dfa2ffe424be453005c9983"

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
