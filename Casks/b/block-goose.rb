cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.51.0"
  sha256 arm:   "6ce60858a48dd69ddae7e06bf633d2d96d11f772752b25e0a84cad1474c12376",
         intel: "3d76a58cd9992bbd5acd24cffaf1ecb2d6d3972ab77a9d7610f63fe7f9860a7a"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  # Some releases don't provide assets for Goose Desktop, so we have to check
  # multiple releases to identify the newest version for the desktop app.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Goose#{arch}\.zip}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: :monterey

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
