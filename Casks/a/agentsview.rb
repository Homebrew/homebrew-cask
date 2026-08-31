cask "agentsview" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.41.1"
  sha256 arm:          "6a1d4d3c4e4bfe34cfb1fd1aaa76d8de983f9e6454bcf963f3220d54839722b4",
         intel:        "d345853cbe9d76e386ccce8f756691d8260270a01688a047bf3192bcea08a510",
         arm64_linux:  "6acbdc2133426d220b95477909c61d607ce0bbae817dde1533146e624db71ea8",
         x86_64_linux: "107e5de2b99b2e58c23e60f23a956598c1b23b21601b07249b4a5d4936c0335d"

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
