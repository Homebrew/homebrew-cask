cask "font-iosevka-ss05" do
  version "33.3.0"
  sha256 "8f54ba1153ca25c0ae08a38c24a229a51d170971b5e08f72afb139c4212ba395"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
