cask "font-iosevka-ss11" do
  version "33.2.4"
  sha256 "58fcbe80fcad359cd22bc78a8ceabcea03434d4856abc1e2dc5aefffd6ff96e3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
