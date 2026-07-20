cask "font-iming" do
  version "8.10"
  sha256 "ed6bd2853c89d07670859149116ffdbc832b1d66756b3edb95676b9b1c84f1a2"

  url "https://github.com/ichitenfont/I.Ming/archive/refs/tags/#{version}.tar.gz"
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
