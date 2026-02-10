cask "ideamaker" do
  arch arm: "-arm64"

  version "5.3.2.8640"
  sha256 arm:   "23e8b7ae8e654e6c420b6f6861f6f168b7ec6e9b4a25b014858f84057b58b33a",
         intel: "4966355964e614d94da85a16fb33e3ea2145d8dd9a0019f84a139221ce012213"

  url "https://downcdn.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}#{arch}.dmg"
  name "ideaMaker"
  desc "FDM 3D Printing Slicer by Raise3D"
  homepage "https://www.raise3d.com/ideamaker/"

  # Download url is unreachable due to Cloudflare protections
  disable! date: "2026-01-23", because: :unreachable

  app "ideaMaker.app"

  zap trash: [
    "~/Library/Application Support/ideaMaker",
    "~/Library/Preferences/com.raise3d.ideaMaker.plist",
    "~/Library/Saved Application State/com.raise3d.ideaMaker.savedState",
  ]
end
