cask "rephraser" do
  version "1.0.0"
  sha256 "99fcdb553f02aea3227a11ada38db21e1d34dc60d08eb65e4bb0ff08b2a45c69"

  url "https://github.com/vatsan95/Rephraser/releases/download/v#{version}/Rephraser-macOS.zip"
  name "Rephraser"
  desc "On-device AI text rewriter for macOS"
  homepage "https://vatsan95.github.io/Rephraser/"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Rephraser.app"

  zap trash: [
    "~/Library/Application Support/Rephraser",
    "~/Library/Preferences/com.rephraser.app.plist",
  ]
end
