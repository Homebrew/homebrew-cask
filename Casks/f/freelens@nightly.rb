cask "freelens@nightly" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.1-0-nightly-2026-11-22"
  sha256 arm:   "bfefc69882cf5ab7717da61d76cb57094e1ee3756b367febb35f0556c32e7379",
         intel: "661aab0265682017b35842e4e6c7e933b630cf4a7d4ed11934abf34a23f4bffd"

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
