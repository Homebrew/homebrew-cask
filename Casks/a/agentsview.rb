cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.39.0"
  sha256 arm:          "60b1adfa51345290cb4073ca476ec17b3cec97f57acc008fa8020b89d9db9015",
         x86_64:       "d35d68c46516d139f799878a6a0120ff63c4c4cada6b0f3ed577384c9276e03b",
         x86_64_linux: "b17656c9125cf93e931793f18568c69b245ca273351aa12f025a22f92e672c4b",
         arm64_linux:  "ce74113bd3a8ef5afd6540048036013784e67dd6db148e50214c6b67c7f323de"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/kenn-io/agentsview/releases/download/v#{version}/AgentsView_#{version}_#{arch}#{url_end}",
      verified: "github.com/kenn-io/agentsview/"
  name "AgentsView"
  desc "Browse, search and analyse your past AI coding sessions"
  homepage "https://www.agentsview.io/"

  # Not every release on GitHub provides assets for the app, so we have to find
  # the newest one with the files the cask uses.
  livecheck do
    url :url
    regex(%r{/AgentsView[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}#{url_end}}i)
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
