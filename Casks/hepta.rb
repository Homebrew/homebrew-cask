cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.329.0"
  sha256 arm:   "662991a4efabd0dd6133a0227c9a7c77ecc85b24282353bd1bfed2cbbb813b10",
         intel: "a2299c34344e635f6442a1cc6fc73fa3da7124cab044b17dac99b099c8dd2959"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
