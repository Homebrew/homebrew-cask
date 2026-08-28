cask "geoda" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.1"
  sha256 arm:   "c58ca95992fc93391b02c4cb5fa1597ac0bb73b03884007685893a53a6ca0a38",
         intel: "c7333a3eed56406284ead2de69deaa833e9df81f74f2ff57a8d5952077ef52db"

  url "https://github.com/GeoDaCenter/geoda/releases/download/v#{version.csv.first}/GeoDa#{version.csv.second || version.csv.first}-#{arch}-Installer.dmg"
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

  depends_on macos: :sequoia

  app "GeoDa.app"

  # No zap stanza required
end
