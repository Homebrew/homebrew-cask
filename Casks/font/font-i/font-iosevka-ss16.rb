cask "font-iosevka-ss16" do
  version "33.0.0"
  sha256 "019db485c527c7117c316b3fef968d133dd3197f6ffe96dd624c8ed3e887d728"

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
