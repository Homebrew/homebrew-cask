cask "font-iosevka-ss17" do
  version "32.3.1"
  sha256 "b136c945f8dd9367a49a1422e084d89c107855695372ad209660265557e6d699"

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
