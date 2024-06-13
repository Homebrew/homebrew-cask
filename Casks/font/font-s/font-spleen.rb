cask "font-spleen" do
  version "2.1.0"
  sha256 "8b47c56f1a6eb858fbcf9e34530557404b02fbb3455e38e64fb84473fd0c372f"

  url "https://github.com/fcambus/spleen/releases/download/#{version}/spleen-#{version}.tar.gz"
  name "Spleen"
  homepage "https://github.com/fcambus/spleen"

  font "spleen-#{version}/spleen-6x12.otf"
  font "spleen-#{version}/spleen-8x16.otf"
  font "spleen-#{version}/spleen-12x24.otf"
  font "spleen-#{version}/spleen-16x32.otf"
  font "spleen-#{version}/spleen-32x64.otf"

  # No zap stanza required
end
