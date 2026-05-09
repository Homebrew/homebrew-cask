cask "font-iosevka-ss05" do
  version "34.5.0"
  sha256 "5e0aaa6ed27cda9de6d8a053feff1d7f11028418d5414e4d5a65202702e14063"

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
