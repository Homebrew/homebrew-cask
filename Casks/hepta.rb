cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.119.0"

  if Hardware::CPU.intel?
    sha256 "fff82721fac4f6445c27e4fa376980b5d8b36ef35394262669e99a25776114c3"
  else
    sha256 "e3db50ecdf077e9e78039403656816008ac559f20b5ca4d53d134f4341b2f407"
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
