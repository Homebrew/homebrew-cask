cask "font-iosevka-ss15" do
  version "34.9.2"
  sha256 "23d06bdf542b2e8fe5284ab3c9144ef2889f0b2cf46e440667b3b94a4a3f2350"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS15.ttc"

  zap :not_required
end
