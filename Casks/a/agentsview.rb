cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.30.1"
  sha256 arm:          "c25eb9ba075b41123a0c017f1b69d10f93d56ea7bda60d1ac15403832613b6dd",
         x86_64:       "5af38dcc2ed1968f6022b45552246909a57adbbc47c22178b4ac0e806fd5611d",
         x86_64_linux: "c6a2254e22bb20df96733a212c803d05f66e69c540eb1566f5e7e58e446e828f",
         arm64_linux:  "5018c8eabcc6962e996b9aa39766b2b598be87959cd8d19ad7d15b78c6ef2677"

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
