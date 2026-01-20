cask "gitfit" do
  version "1.0.0"
  sha256 "ace69bf2635e1684f584351245c97982b6a66e77cbb141cf67e74297ef8263f4"

  url "https://github.com/rebelchris/git-fit/releases/download/v#{version}/GitFit-#{version}.dmg",
      verified: "github.com/rebelchris/git-fit/"
  name "GitFit"
  desc "Micro-workouts while waiting for AI code generation"
  homepage "https://git-fit.app"

  depends_on macos: ">= :ventura"

  app "GitFit.app"

  zap trash: [
    "~/Library/Application Support/GitFit",
    "~/Library/Caches/com.chrisbongers.GitFit",
    "~/Library/Preferences/com.chrisbongers.GitFit.plist",
  ]
end
