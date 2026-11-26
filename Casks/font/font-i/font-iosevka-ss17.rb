cask "font-iosevka-ss17" do
  version "34.9.2"
  sha256 "13752b9f5a668601e7266e4176ac72e2ff1acc0e929463e01b7d6b7e0162ed7f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  zap :not_required
end
