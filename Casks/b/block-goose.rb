cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.50.1"
  sha256 arm:   "db759ffc48fac2206689e944daf4d206c994272d6ed76f718f7bf727ab0f92eb",
         intel: "ede972491427ab2c8329ae5bf4c6361d2d8c914c854aac752d28de0633000909"

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
