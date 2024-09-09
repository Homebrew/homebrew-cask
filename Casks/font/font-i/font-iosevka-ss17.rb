cask "font-iosevka-ss17" do
  version "31.6.1"
  sha256 "a247408bacce63f3adf76cc41dc22254e41fdf78026d6ba2e4d69c7407209d5f"

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
