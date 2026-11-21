cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.0-0-nightly-2026-11-21"
  sha256 arm:   "0bf8d15e1c81ea9f53d418d3fe3ab317bcec17353eee9f30067f2f6e2d54b522",
         intel: "7a52139d2002b82dec1a3a70637870fae65ed132face1613bd03c0caa8fbbe97"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
  depends_on macos: :ventura

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
