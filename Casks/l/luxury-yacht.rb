cask "luxury-yacht" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1"
  sha256 arm:   "66d910450ae1abea42bd996bf5ed2810f7194f6ae880b53ba3d33405a7db57db",
         intel: "1f9f39111568bfa2edfdc0ddcc687a032e3c579c654c0d5d67a02afb381c12be"

  url "https://github.com/luxury-yacht/app/releases/download/v#{version}/luxury-yacht-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/luxury-yacht/app/"
  name "Luxury Yacht"
  desc "Desktop app for managing Kubernetes clusters"
  homepage "https://luxury-yacht.app/"

  depends_on :macos

  app "Luxury Yacht.app"

  zap trash: "~/Library/Application Support/luxury-yacht"
end
