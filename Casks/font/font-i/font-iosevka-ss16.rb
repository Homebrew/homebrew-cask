cask "font-iosevka-ss16" do
  version "31.3.0"
  sha256 "022bf026027ae10c408d6d5bb26d85f4f33ec4e919c306943370a9c91d8cd8e9"

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
