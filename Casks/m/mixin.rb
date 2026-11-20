cask "mixin" do
  version "7.1.0"
  sha256 "af0422237255a30cb76b6b66477c9f4dbbba18a14f160b0ba11a552fdc3d429e"

  url "https://github.com/MixinNetwork/flutter-app/releases/download/v#{version}/mixin-#{version}.dmg"
  name "Mixin Messenger Desktop"
  desc "Cryptocurrency wallet"
  homepage "https://messenger.mixin.one/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^mixin[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Mixin.app"

  zap trash: [
    "~/Library/Application Scripts/one.mixin.messenger.desktop",
    "~/Library/Application Support/one.mixin.messenger.desktop",
    "~/Library/Containers/one.mixin.messenger.desktop",
    "~/Library/Saved Application State/one.mixin.messenger.desktop.savedState",
  ]
end
