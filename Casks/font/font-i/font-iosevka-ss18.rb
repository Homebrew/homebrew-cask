cask "font-iosevka-ss18" do
  version "33.0.0"
  sha256 "4c0bf6ef9f4c3a53ad514d41b643771eaff0da59e831c9e9d3cf3142d9bf5427"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
