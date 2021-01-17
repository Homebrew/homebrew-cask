cask "synfigstudio" do
  version "1.4.0,20201114"
  sha256 "e6f0bfb00638b5236f826b77df69413356e4874b65c52f0baedbfe1e3c3f9c91"

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
