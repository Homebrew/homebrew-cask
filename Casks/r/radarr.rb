cask "radarr" do
  version "5.1.3.8246"
  sha256 "0ce43a4792c27a4dd76bdf1538100832d6a027b93acd14c08de9827ef879b094"

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-x64.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"

  caveats do
    requires_rosetta
    <<~EOS
      The Apple Silicon build for this cask is not functional so the Intel build is
      required instead.
        https://github.com/orgs/Homebrew/discussions/3088#discussioncomment-7623916
    EOS
  end
end
