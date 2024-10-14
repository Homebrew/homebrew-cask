cask "font-iosevka-ss10" do
  version "31.9.1"
  sha256 "035ce15a0ae08d8697ea716bd5fc5414430aef0be33ce42457bb029bbade4a8f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
