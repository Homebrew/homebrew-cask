cask "font-iosevka-ss15" do
  version "32.5.0"
  sha256 "055d0f95099b6127604c0ea71d4a41573b573582af83461dad2a538cb549dce9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS15.ttc"

  # No zap stanza required
end
