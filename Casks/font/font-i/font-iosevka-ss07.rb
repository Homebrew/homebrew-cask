cask "font-iosevka-ss07" do
  version "34.7.0"
  sha256 "fcf552ff7a533c486ddc773bb062691990c38c1d8d0ea698c674242840aedb3b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
