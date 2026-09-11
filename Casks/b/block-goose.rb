cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.50.0"
  sha256 arm:   "a0e738e94b24d45101aedbc8081196ac9ae60df377c5dc909f526b2c47b06176",
         intel: "3e8d8a45865690463ba9b574afdfda6b5dbc19267710a149ef876e2184d7e774"

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
