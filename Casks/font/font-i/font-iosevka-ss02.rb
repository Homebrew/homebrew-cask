cask "font-iosevka-ss02" do
  version "32.2.0"
  sha256 "8de34b157c8845753d000278d8e848d89fd9c12b183c23d70b47cfa56d068ca1"

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
