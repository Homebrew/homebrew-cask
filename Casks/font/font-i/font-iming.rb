cask "font-iming" do
  version "8.10"
  sha256 "dcd7d3c71fa08541ee86276b29b7c8e70f35f99141ff1d1781695b282d70ff22"

  url "https://github.com/ichitenfont/I.Ming/archive/refs/tags/#{version}.zip"
  name "I.Ming"
  name "一點明體"
  name "一点明朝"
  name "一点明体"
  homepage "https://github.com/ichitenfont/I.Ming"

  font "I.Ming-#{version}/#{version}/I.Ming-#{version}.ttf"
  font "I.Ming-#{version}/#{version}/I.MingCP-#{version}.ttf"
  font "I.Ming-#{version}/#{version}/I.MingVar-#{version}.ttf"
  font "I.Ming-#{version}/#{version}/I.MingVarCP-#{version}.ttf"
  font "I.Ming-#{version}/#{version}/PMingI.U-#{version}.ttf"
  font "I.Ming-#{version}/#{version}/PMingI.UVar-#{version}.ttf"

  # No zap stanza required
end
