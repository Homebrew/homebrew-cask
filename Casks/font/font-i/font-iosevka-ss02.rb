cask "font-iosevka-ss02" do
  version "31.6.1"
  sha256 "f0dc895af9404f02cafc69b056ddefe05d7d0af00292ea3e23eceb6875a9b19c"

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
