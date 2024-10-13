cask "font-iosevka-slab" do
  version "31.9.0"
  sha256 "68406aeb4bd155a883b1f6b9c83561099a5bc736cd3133d7fe6b3491f15731b8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  # No zap stanza required
end
