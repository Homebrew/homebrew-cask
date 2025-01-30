cask "geoda" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.0.14,1.22.0"
  sha256 arm:   "587958a1bebe70e5f8c2b55ba9a4940d8dca6bebf94723760f2d64dd0e1be551",
         intel: "74591f7e466c045424197dd7978130f6069c8bd120f4da7fd1da6804194be70e"

  url "https://github.com/GeoDaCenter/geoda/releases/download/v#{version.csv.first}/GeoDa#{version.csv.second || version.csv.first}-#{arch}-Installer.dmg",
      verified: "github.com/GeoDaCenter/geoda/"
  name "GeoDa"
  desc "Spatial analysis, statistics, autocorrelation and regression"
  homepage "https://geodacenter.github.io/"

  # The tag version can differ from the filename version, so we include both in
  # the `version` when necessary.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/GeoDav?(\d+(?:\.\d+)+)[._-]#{arch}[._-]Installer\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        next match[1] if match[1] == match[2]

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "GeoDa.app"

  # No zap stanza required
end
