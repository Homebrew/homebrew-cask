cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.0-0-nightly-2026-08-15"
  sha256 arm:          "c4ebad280a8b1b47927bc46ffa8e966917fa54b424aee46ff0af16a260b18d0c",
         intel:        "30074dfd127d51af19c1303838a36ca324c66409b241732b1d1fe5bb1837873a",
         arm64_linux:  "040bbcb396092417528936c8817421c4700b890f9ce70d33b37dec89cf5f33ef",
         x86_64_linux: "bf1117df790b29572c1c691391d3e10cf0d426498e693e1113c844f99511588c"

  on_macos do
    depends_on macos: :monterey

    app "Freelens.app"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.freelens.freelens.sfl*",
          "~/Library/Application Support/Freelens",
          "~/Library/Logs/Freelens",
          "~/Library/Preferences/app.freelens.Freelens.plist",
          "~/Library/Saved Application State/app.freelens.Freelens.savedState",
        ],
        rmdir: "~/.freelens"
  end
  on_linux do
    app_image "Freelens-#{version}-linux-#{arch}.AppImage", target: "Freelens.AppImage"
  end

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-#{os}-#{arch}.#{url_end}",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
end
