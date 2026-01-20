cask "gitfit" do
  version "1.2.0"
  sha256 "3ae76e4c475bf81c495d13ba19591f405a7c07c767364ce68022a04835cf8d26"

  url "https://github.com/rebelchris/git-fit/releases/download/v#{version}/GitFit-#{version}.dmg",
      verified: "github.com/rebelchris/git-fit/"
  name "GitFit"
  desc "Micro-workouts while waiting for AI code generation"
  homepage "https://git-fit.app/"

  depends_on macos: ">= :tahoe"

  app "GitFit.app"

  zap trash: "~/Library/Containers/com.chrisbongers.GitFit"
end
