cask "font-dejavu-sans" do
  version "2.37"
  sha256 "5c6e497a2f36552cb5ffb112c413a6af39c0f3c47653662b90b4fa6499822fd7"

  url "https://github.com/dejavu-fonts/dejavu-fonts/releases/download/version_#{version.dots_to_underscores}/dejavu-sans-ttf-#{version}.zip"
  name "DejaVu Sans"
  homepage "https://github.com/dejavu-fonts/dejavu-fonts"

  livecheck do
    url :url
    regex(/^(?:version[._-])?v?(\d+(?:[._]\d+)+)$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.[](regex, 1)&.tr("_", ".")
    end
  end

  conflicts_with cask: "font-dejavu"

  font "dejavu-sans-ttf-#{version}/ttf/DejaVuSans.ttf"

  # No zap stanza required
end
