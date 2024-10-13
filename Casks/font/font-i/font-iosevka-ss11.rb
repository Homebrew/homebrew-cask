cask "font-iosevka-ss11" do
  version "31.9.0"
  sha256 "7f9f890da44ab757f064c317010f412e3ae7f2406293df904e8861ba768601d0"

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
