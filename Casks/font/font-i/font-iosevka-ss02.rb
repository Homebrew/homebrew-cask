cask "font-iosevka-ss02" do
  version "33.2.7"
  sha256 "4643b7afd1c108a40446567b4c17ca0670aa7b4a04aebb906d2e83444fe44e9f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
