cask "texstudio" do
  arch arm: "-m1"

  version "4.9.4"
  sha256 arm:   "1e2920c48ab8c362ca89593040fc95900903ac3e8d5d23141c8ba8884cb4cc02",
         intel: "5cd63a059b23bffffcfac77c26c684e98d182407b9d7ba021d8a5e9285c485e2"

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}.zip",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "texstudio-#{version}-osx#{arch}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
