cask "motrix@beta" do
  arch arm: "-arm64", intel: "-x64"

  version "2.0.0-beta.26"
  sha256 arm:   "c7a9595e7df008318f10b5c2699e3fb49610a590a4802ec1b211064fa2b2ec98",
         intel: "8b18482118f79034172e9c9a84734c5fbcaa5c38d02f3dce05177627547996cc"

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}#{arch}.dmg"
  name "Motrix Beta"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]beta\.\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || !release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "motrix"
  depends_on macos: :monterey

  app "Motrix.app"

  zap trash: [
    "~/Library/Application Support/Motrix",
    "~/Library/Caches/app.motrix.native",
    "~/Library/Logs/Motrix",
    "~/Library/Preferences/app.motrix.native.plist",
    "~/Library/Saved Application State/app.motrix.native.savedState",
  ]
end
