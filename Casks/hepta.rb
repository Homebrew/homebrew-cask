cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.99.0"

  if Hardware::CPU.intel?
    sha256 "66af073aae178bcc270bed16ad45d79483c7df6b4ba53f9ee457fb932d132d95"
  else
    sha256 "1d79b2176c8d580fb60fd920d7bad07e519b65ea5ce698d61007bd46b7320c08"
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
