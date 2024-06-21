cask "tad" do
  arch arm: "-arm64"

  version "0.14.0"
  sha256  arm:   "18004712674bbd7072137937f2ad02231f71b2b326d48079e72f9a536660d588",
          intel: "b942fc420a3b19240b52f798d29334bbd78f89ebbf7c7702962668eccc39011e"

  url "https://github.com/antonycourtney/tad/releases/download/v#{version}/Tad-#{version}#{arch}.dmg",
      verified: "github.com/antonycourtney/tad/"
  name "Tad"
  desc "Desktop application for viewing and analyzing tabular data"
  homepage "https://www.tadviewer.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Tad.app"
  binary "#{appdir}/Tad.app/Contents/Resources/tad.sh", target: "tad"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.antonycourtney.tad.sfl*",
    "~/Library/Application Support/Tad",
    "~/Library/Logs/Tad",
    "~/Library/Preferences/com.antonycourtney.tad.plist",
    "~/Library/Saved Application State/com.antonycourtney.tad.savedState",
  ]
end
