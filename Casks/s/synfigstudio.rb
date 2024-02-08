cask "synfigstudio" do
  version "1.4.4,2022.12.25,b8d62"
  sha256 "1e9a274e606a6f6805509df0e42cc37ddc4d3d85b0bde22d67fd1f3e967415e1"

  url "https://github.com/synfig/synfig/releases/download/v#{version.csv.first}/SynfigStudio-#{version.csv.first}-#{version.csv.second}-osx-#{version.csv.third}.dmg",
      verified: "github.com/synfig/synfig/"
  name "Synfig Studio"
  desc "2D animation software"
  homepage "https://synfig.org/"

  # Upstream creates GitHub releases for both stable and development versions
  # and the "latest" release isn't guaranteed to be a stable version, so it's
  # necessary to check recent releases and match stable versions. Upstream
  # appears to use an "even-numbered minor is stable" version scheme (see the
  # Release Notes page: https://synfig.readthedocs.io/en/latest/releases.html).
  livecheck do
    url :url
    regex(/^SynfigStudio[._-](\d+\.[02468](?:\.\d+)*)(?:-(\d+(?:\.\d+)*))?(?:-osx-([a-z\d]+))?\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match.to_a.compact.drop(1).join(",")
        end
      end.flatten
    end
  end

  app "SynfigStudio.app"

  zap trash: "~/Library/Synfig"
end
