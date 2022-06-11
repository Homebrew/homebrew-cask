cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.153.0"

  if Hardware::CPU.intel?
    sha256 "4ee52059190d434f25b04d63557ea83d63e6797bd6e994d6a5106dfd12df6f15"
  else
    sha256 "1c14b580f0c64fa2d1e3613edfe53856ea791f04a6739bb9aee758c63a499c60"
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
