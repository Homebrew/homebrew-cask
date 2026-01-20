cask "gitfit" do
  version "1.1.0"
  sha256 "a277bc997421fdf5a4da6ad228fe5fe472de9371c3115f9a3b62fad9aab34dcd"

  url "https://github.com/rebelchris/git-fit/releases/download/v#{version}/GitFit-#{version}.dmg",
      verified: "github.com/rebelchris/git-fit/"
  name "GitFit"
  desc "Micro-workouts while waiting for AI code generation"
  homepage "https://git-fit.app/"

  depends_on macos: ">= :tahoe"

  app "GitFit.app"

  zap trash: "~/Library/Containers/com.chrisbongers.GitFit"
end
