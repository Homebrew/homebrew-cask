cask "font-iosevka-ss09" do
  version "32.3.1"
  sha256 "1d9b4d401e44786abd7c699fcaabcf020444cc2dcab95317d751ceb8af49e6d5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
