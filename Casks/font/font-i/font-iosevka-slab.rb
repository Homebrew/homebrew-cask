cask "font-iosevka-slab" do
  version "31.2.0"
  sha256 "12eac295fa5ad633dcb04a3bdf0d871aa37763c5808ab48ac08dfe1b4dc74dbe"

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
