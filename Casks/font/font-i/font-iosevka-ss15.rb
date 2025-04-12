cask "font-iosevka-ss15" do
  version "33.2.1"
  sha256 "288d010e5fd0f1b4a975f13d5e19ffa26608630b5b36ee26e08d6d42d1ee4962"

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
