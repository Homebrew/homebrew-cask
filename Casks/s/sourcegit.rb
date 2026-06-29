cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.14"
  sha256 arm:   "94207d389ab4d7947ea48386f81b2daa656422a157b003615cc028abc94a6ca6",
         intel: "b049214b577aef3cc1c533f56cbe83814a8d1222149809b5edac409f616227ec"

  url "https://github.com/ybeapps/homebrew-sourcegit/releases/download/v#{version}-signed/SourceGit-v#{version}-#{arch}-signed.dmg"
  name "SourceGit"
  desc "Git GUI client"
  homepage "https://github.com/sourcegit-scm/sourcegit"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "SourceGit.app"
  binary "#{appdir}/SourceGit.app/Contents/MacOS/SourceGit", target: "sourcegit"

  zap trash: [
    "~/Library/Application Support/SourceGit",
    "~/Library/Saved Application State/com.sourcegit.app.savedState",
  ]
end
