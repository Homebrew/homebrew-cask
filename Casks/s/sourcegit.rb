cask "sourcegit" do
  arch arm: "arm64", intel: "x64"

  version "2026.16"
  sha256 arm:   "16788af52aa330fb134f050912ef197169b3971b7724f670970057b9cf62d9e5",
         intel: "feca8f7c860d0c0723d3b9ea8a2f3fd57aefd73cafb2791c91d79a5d85b5c9a7"

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
