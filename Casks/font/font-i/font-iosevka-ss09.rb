cask "font-iosevka-ss09" do
  version "31.6.1"
  sha256 "a16749cf82f65a3ac7fe0d7efd9a7a78b12c35991fadff0835cade8937ff86b2"

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
