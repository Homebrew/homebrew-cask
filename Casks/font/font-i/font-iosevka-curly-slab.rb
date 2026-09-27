cask "font-iosevka-curly-slab" do
  version "34.9.0"
  sha256 "57fc06b527979e278e1f21ea7669da9567e16a9fb72f947f0bd3f05ce097ea4d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurlySlab-#{version}.zip"
  name "Iosevka Curly Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurlySlab.ttc"

  # No zap stanza required
end
