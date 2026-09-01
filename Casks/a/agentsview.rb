cask "agentsview" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.42.0"
  sha256 arm:          "836ba9b6993d617d420f6683f738d5b58daf282fa6eb7634db79328e8b6afc65",
         intel:        "6c7257eb2bf142f7666619d8b8f3d4f89b40a6e2b2cda721317f5d405d4a7b31",
         arm64_linux:  "e7c873a6f4d9285adb615ea06c4e0ae51f9dc9bcd525e074337f69519fe71e9f",
         x86_64_linux: "73f374d2b9982ce4b2211d920e4d7f4da9aa56e561428f404db0d85ed82c654b"

  on_macos do
    depends_on macos: :big_sur

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
