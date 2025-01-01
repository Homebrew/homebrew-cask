cask "font-iosevka-ss15" do
  version "32.3.1"
  sha256 "8bb97324f63db2ff7181b73cfe04091209b36ab348bffcc55ecab69fae1a8aeb"

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
