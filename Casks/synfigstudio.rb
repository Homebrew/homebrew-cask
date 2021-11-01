cask "synfigstudio" do
  version "1.5.0,2021.08.13:32dd4"
  sha256 "b40aa6394fd6d3cbaa085abaa64886f64321c2526229486723f20b197f183a17"

  url "https://github.com/synfig/synfig/releases/download/v#{version.before_comma}/SynfigStudio-#{version.before_comma}-#{version.after_comma.before_colon}-osx-#{version.after_colon}.dmg",
      verified: "github.com/synfig/synfig/"
  name "Synfig Studio"
  desc "2D animation software"
  homepage "https://synfig.org/"

  livecheck do
    url "https://github.com/synfig/synfig/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/SynfigStudio-(\d+(?:\.\d+)*)-(\d+(?:\.\d+)*)-osx-([a-z\d]+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  app "SynfigStudio.app"

  zap trash: "~/Library/Synfig"
end
