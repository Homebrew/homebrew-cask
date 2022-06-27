cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.162.0"

  if Hardware::CPU.intel?
    sha256 "678fc87d944bfd27e1fa5aaeb01e46c39f30dc029af65e84128b42210a5f99f5"
  else
    sha256 "17bf485295a7b47f22b8e8f6f05a18a4177a61940be2958c744fd2962f13b24e"
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
