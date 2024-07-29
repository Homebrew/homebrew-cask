cask "jamie" do
  arch arm: "-arm64"

  version "4.1.9"
  sha256 arm:   "e0ab7747fccc23426d02c9d863865d14376269f60a4f5269798cc82fb370aa0e",
         intel: "690aedb2ae2fa8df8f599a6a38723340f1bdbe8dc2f9bf70f564c1dafcd1021b"

  url "https://github.com/louismorgner/jamie-release/releases/download/v#{version}/jamie-#{version}#{arch}.dmg",
      verified: "github.com/louismorgner/jamie-release/"
  name "jamie"
  desc "AI-powered meeting notes"
  homepage "https://meetjamie.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
