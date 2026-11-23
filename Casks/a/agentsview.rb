cask "agentsview" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.48.0"
  sha256 arm:          "fb081803f8812e2dd87d392a25db1b344ba9683b49d0f8215c1719ee224a8bcb",
         intel:        "e39fef7dce7ddf15c50caa46615e49e0a7b22ea1767584abe0ec897044c9d7f8",
         arm64_linux:  "89460936b55860fb0633e9e9028091bc895d7ace6714134c32655ebcb4e338a5",
         x86_64_linux: "fd8ca0ab592855044c76ded1a0362786fd366dd693f64a9c9c69cd97087500aa"

  on_macos do
    app "AgentsView.app"
    binary "#{appdir}/AgentsView.app/Contents/MacOS/agentsview"

    zap trash: [
      "~/.agentsview",
      "~/Library/Caches/agentsview",
      "~/Library/Caches/io.agentsview.desktop",
      "~/Library/Logs/io.agentsview.desktop",
      "~/Library/WebKit/io.agentsview.desktop",
    ]
  end
  on_linux do
    app_image "AgentsView_#{version}_#{arch}.AppImage", target: "AgentsView.AppImage"

    zap trash: [
      "~/.agentsview",
      "~/.local/share/applications/agentsview-desktop-handler.desktop",
      "~/.local/share/io.agentsview.desktop",
    ]
  end

  url "https://github.com/kenn-io/agentsview/releases/download/v#{version}/AgentsView_#{version}_#{arch}.#{url_end}"
  name "AgentsView"
  desc "Browse, search and analyse your past AI coding sessions"
  homepage "https://www.agentsview.io/"

  # Not every release on GitHub provides assets for the app, so we have to find
  # the newest one with the files the cask uses.
  livecheck do
    url :url
    regex(%r{/AgentsView[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]#{url_end}}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next unless match

          match[1]
        end
      end.flatten
    end
  end
end
