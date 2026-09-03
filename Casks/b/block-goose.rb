cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.49.0"
  sha256 arm:   "b26c3e0bdb4d32f2d9da1eaa5e3566d5637e5b15cd2fb78348b67e2b434e6510",
         intel: "23cad5bd9c84da7bd068ac6aa4271d78f09c325ceac5795770a652f6bf3ebc3d"

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
