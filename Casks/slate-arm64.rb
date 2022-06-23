cask "slate-arm64" do
  version "1.0"
  sha256 "30a6e20b4136569accab9f38d8659193726d984ef6235b035db59e678deec7bf"

  url "https://github.com/fertigt/slate_arm64/releases/download/#{version}/Slate.zip"
  name "slate-arm64"
  desc "Window management application (replacement for Divvy/SizeUp/ShiftIt)"
  homepage "https://github.com/fertigt/slate_arm64"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Slate.app"

  zap trash: [
    "~/.slate",
    "~/.slate.js",
    "~/Library/Application Support/com.tobiasfertig.Slate",
  ]
end
