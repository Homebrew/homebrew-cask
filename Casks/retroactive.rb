cask "retroactive" do
  version "1.9"
  sha256 "46e880443af16d19bd4650d41e1dbc9acd384a44bb2251a72c94a7aeaab9d08f"

  url "https://github.com/cormiertyshawn895/Retroactive/releases/download/#{version}/Retroactive.#{version}.zip"
  name "Retroactive"
  desc "Run Apple apps on incompatible OS versions"
  homepage "https://github.com/cormiertyshawn895/Retroactive"

  app "Retroactive #{version}/Retroactive (right click to open).app"

  zap delete: "~/Library/Caches/com.retroactive.Retroactive"
end
