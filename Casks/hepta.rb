cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.159.0"

  if Hardware::CPU.intel?
    sha256 "a6aec43680c7b48eee057f459fb2ab8838a38ff177a85a89103360604199e89c"
  else
    sha256 "001c30996685c315ecd302e496bc80250dd1300c181e75f963806c640c8e159f"
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
