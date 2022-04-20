cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.128.0"

  if Hardware::CPU.intel?
    sha256 "c785a5f963ae591c88a90f159df0f447ac0f002b3d8b3129d2a8184e7e081c21"
  else
    sha256 "946ac3376618febf90001adbe6615cbca0784fbb9a3e618762d246efe46c5f0e"
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
