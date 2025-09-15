cask "geoda" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.0.20,1.22.0"
  sha256 arm:   "0db259e253d18ef4fca65fdaa3c9ad3fa66e90f33b57e6ca6accf07c0abb235d",
         intel: "08bd3333ac410a34f1f7089f669c8994236781579099be01945003e4d2bd3c5b"

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

  app "GeoDa.app"

  # No zap stanza required
end
