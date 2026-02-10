cask "font-iosevka-ss05" do
  version "34.1.0"
  sha256 "128ca84fc59a6e483cdf4eea1db899ae3ab064c019769d7ca4e257453d289382"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
