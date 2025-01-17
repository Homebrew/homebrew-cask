cask "geoda" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.0.12,1.22.0"
  sha256 arm:   "cdf884cd2ab338a7f27bcb45cb20009d5db793aa0ee96296deebdf921b535482",
         intel: "b8c936f8263a89883089781629571aa7b16e42c894d0344f17420e72451d9dcd"

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
