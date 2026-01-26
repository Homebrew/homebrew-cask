cask "gitfit" do
  version "1.3.0"
  sha256 "d5ccd1fa2f2c7506baa343accef09010de662815b41f769a940e6e5aa224fb64"

  url "https://github.com/rebelchris/git-fit/releases/download/v#{version}/GitFit-#{version}.dmg",
      verified: "github.com/rebelchris/git-fit/"
  name "GitFit"
  desc "Micro-workouts while waiting for AI code generation"
  homepage "https://git-fit.app/"

  depends_on macos: ">= :tahoe"

  app "GitFit.app"

  zap trash: "~/Library/Containers/com.chrisbongers.GitFit"
end
