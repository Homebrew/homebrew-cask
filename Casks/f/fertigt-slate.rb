cask "fertigt-slate" do
  version "1.0"
  sha256 "30a6e20b4136569accab9f38d8659193726d984ef6235b035db59e678deec7bf"

  url "https://github.com/fertigt/slate_arm64/releases/download/#{version}/Slate.zip"
  name "Slate (arm64)"
  desc "Window management application"
  homepage "https://github.com/fertigt/slate_arm64"

  app "Slate.app"

  zap trash: [
    "~/.slate",
    "~/.slate.js",
    "~/Library/Application Support/com.tobiasfertig.Slate",
  ]
end
