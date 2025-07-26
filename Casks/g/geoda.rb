cask "geoda" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.0.18,1.22.0"
  sha256 arm:   "9383fdf36749cbabd492f6f2bca39dedb1518f284cd54a7320c888f8c2de52d6",
         intel: "16474a2a10d08b4bb05f49162bbffb3e2f193272cc16312a020858c43789fdac"

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
