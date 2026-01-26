cask "geoda" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.0.21,1.22.0"
  sha256 arm:   "bb7858799c66786812cab6002f59f2b107bc2a62d7d2e5d11fb984f3746138e6",
         intel: "f42c4dca84071cd1141398e60d5651dbfed12f0a78b1238de9adaeb95b16cdce"

  on_arm do
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    depends_on macos: ">= :ventura"
  end

  url "https://github.com/GeoDaCenter/geoda/releases/download/v#{version.csv.first}/GeoDa-#{version.csv.second || version.csv.first}-#{arch}-MacOS.zip",
      verified: "github.com/GeoDaCenter/geoda/"
  name "GeoDa"
  desc "Spatial analysis, statistics, autocorrelation and regression"
  homepage "https://geodacenter.github.io/"

  # The tag version can differ from the filename version, so we include both in
  # the `version` when necessary.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/GeoDa[._-]?v?(\d+(?:\.\d+)+)[._-]#{arch}[._-](?:Installer|MacOS)\.(?:dmg|zip)$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        next match[1] if match[1] == match[2]

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "GeoDa.app"

  # No zap stanza required
end
