cask "font-iosevka-ss17" do
  version "33.3.2"
  sha256 "ae8d7aa1d55c3c6b07306571e235a28ec640c6231a10bc0d72526f654c430555"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
