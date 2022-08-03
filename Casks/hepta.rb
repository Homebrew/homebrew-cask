cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.183.0"

  if Hardware::CPU.intel?
    sha256 "201d8f27630e0b9788962c2f4bcc02ad00cb7afdeb95230cdcaa398ddc6fd9cb"
  else
    sha256 "e1c92727029c84f655d9e42bf1216eb3b83c9ca06cd72e6500fa93f6bf3a68ef"
  end

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url "https://github.com/heptameta/project-meta/releases"
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
