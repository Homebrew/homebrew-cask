cask "synfigstudio" do
  version "1.3.16,20200806"
  sha256 "5c83a03cd75914c4b0af856fda6ff17b950626191163937f8a79cd87f1fa41cd"

  url "https://github.com/synfig/synfig/releases/download/v#{version.before_comma}/SynfigStudio-#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "github.com/synfig/synfig/"
  name "Synfig Studio"
  homepage "https://synfig.org/"

  livecheck do
    url "https://github.com/synfig/synfig/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/SynfigStudio-(\d+(?:\.\d+)*)-(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "SynfigStudio.app"

  zap trash: "~/Library/Synfig"
end
