cask "agentsview" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.40.0"
  sha256 arm:          "2b2ffbca7f9a9a0c27f25113f1e09afe212ce3c9a52ed63c35ecc0966f91927a",
         x86_64:       "4ba6c13359ebf53142184b5f4ea1ab28a3e59f232e1ecb5d1b68a7f733f52bbc",
         x86_64_linux: "0151088c1ad921def67ddb7eb2144e7e381d89a162099d21e0178cdfe6d3d6fc",
         arm64_linux:  "58baaabb2df03c7e8610914d0b48d0792bee886753772ccc23f417275059294e"

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
