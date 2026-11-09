cask "agentsview" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.47.0"
  sha256 arm:          "680de73142294cbd796615a5b5c83509a81c5e490edc511cf136ab0c17577cca",
         intel:        "e888afdcc1e43ef658b2a730e281726405151658868038b315bb6f3921472b30",
         arm64_linux:  "313ddf62876d4b1e47a54d57fba1c4b1da3980b4b65104f3239f52b8500e81f8",
         x86_64_linux: "392243e8e046231bba065c9974df2eddf5219d71a730ea2605bc3b5b921cd0e8"

  on_macos do
    app "AgentsView.app"
    binary "#{appdir}/AgentsView.app/Contents/MacOS/agentsview"

    zap trash: [
      "~/.agentsview",
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
