cask "hepta" do
  arch = Hardware::CPU.intel? ? "mac" : "arm64-mac"

  version "0.126.0"

  if Hardware::CPU.intel?
    sha256 "516dca28c2ea0b0ce4148b55494810a517bfd25797522f5300a94a02960827a3"
  else
    sha256 "b3070753896f5f0722cdc706a0044f6b5e1c3d54fa103b8baa073e25b50948ca"
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
