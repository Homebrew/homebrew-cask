cask "font-iosevka-ss09" do
  version "34.6.3"
  sha256 "3cd6524f0a49f6206ae0ecd5379af298802eab419e1bb2408ed6f6596ef27838"

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
