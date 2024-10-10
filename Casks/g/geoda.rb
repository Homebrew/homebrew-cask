cask "geoda" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.0.10,1.22.0"
  sha256 arm:   "c84f121188f57341bf1bfd017cbed2a930bcc256bbf45979d15af3ad324d64f5",
         intel: "903f4eeb63e19e5365332ceb5f05afcc456a4aa8ec5853cf8d00fff85a03acad"

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
