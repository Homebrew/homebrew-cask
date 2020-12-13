cask "synfigstudio" do
  version "1.3.16,20200806"
  sha256 "5c83a03cd75914c4b0af856fda6ff17b950626191163937f8a79cd87f1fa41cd"

  url "https://github.com/synfig/synfig/releases/download/v#{version.before_comma}/SynfigStudio-#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "github.com/synfig/synfig/"
  appcast "https://github.com/synfig/synfig/releases.atom"
  name "Synfig Studio"
  homepage "https://synfig.org/"

  app "SynfigStudio.app"

  zap trash: "~/Library/Synfig"
end
