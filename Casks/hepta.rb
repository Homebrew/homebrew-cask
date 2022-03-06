cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.97.0"

  if Hardware::CPU.intel?
    sha256 "25c9b8d0f71fa95bb311e14b84b791dae057c44bc448e64b4382331fbaa5b844"
  else
    sha256 "d416e9bc14227f4fe841baf8b7ee204dce4bdb910bd9914b7b8c751a4a5908a3"
  end

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
