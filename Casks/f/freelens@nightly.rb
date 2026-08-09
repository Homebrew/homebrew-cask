cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.0-0-nightly-2026-08-09"
  sha256 arm:   "a30fe0dd3968a5c19737fb4037404aa5d18aba3eccdf4e8387dea85a5423e670",
         intel: "350951659107aec4a99d173d314668d253651702fa4a66be35a1e1f8f5854a24"

  url "https://github.com/freelensapp/freelens-nightly-builds/releases/download/v#{version}/Freelens-#{version}-macos-#{arch}.dmg",
      verified: "github.com/freelensapp/freelens-nightly-builds/"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens"
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
