cask "font-iosevka-ss16" do
  version "34.8.1"
  sha256 "6b5513edc6fb650bea5359965969bc8293508b3ddb7262729b6a8df228bfd37c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
