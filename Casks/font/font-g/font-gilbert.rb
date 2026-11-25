cask "font-gilbert" do
  version "1.005,alpha"
  sha256 "d3ac3075efe00bf4302264b2e626f548e3549740d359a43991605b2a180d8cbe"

  url "https://github.com/Fontself/TypeWithPride/releases/download/#{version.csv.first}/Gilbert_#{version.csv.first}_#{version.csv.second}.zip"
  name "Gilbert"
  homepage "https://github.com/Fontself/TypeWithPride"

  # This uses the `GithubReleases` strategy because all releases are marked as
  # pre-release on GitHub. We should be able to switch to the `GithubLatest`
  # strategy if/when there's a "latest" release in the future.
  livecheck do
    url :url
    regex(/Gilbert[._-]v?(\d+(?:\.\d+)+)[._-](.*)\.zip/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match.values_at(1, 2).compact.join(",")
        end
      end.flatten
    end
  end

  preview_version = version.before_comma.minor.tr("00", "")
  font "Gilbert-Bold Preview#{preview_version}.otf"
  font "Gilbert-Color Bold Preview#{preview_version}.otf"

  zap :not_required
end
