cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.34.3"
  sha256 arm:          "855e71f7d1ef60ce0634d04b1df5c7e8f561a1c253b8a962716dc93bb1c391e7",
         x86_64:       "06e4e7ca8cd8d8273ac72860edd6e6903689e04614daf36558960e1b3ea4d5bc",
         x86_64_linux: "6a59f90a25a57db14c50ede23aa855a542fd1988e24be43aa98862a72548e06d",
         arm64_linux:  "5542506ec6d4c8c747756d71c965401f37712dcd985d78176263cd02bf22c32f"

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
