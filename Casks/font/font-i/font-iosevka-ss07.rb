cask "font-iosevka-ss07" do
  version "31.6.0"
  sha256 "22723aa1b8d28c54eb5a304216bc84e0cebe35af5699d872061c6eb403fc5b68"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
