cask "retroactive" do
  version "1.9"
  sha256 "6f856bcdd62a25d31a16670a7091401f173059194136bfa5f83caae2255b28ae"

  url "https://github.com/cormiertyshawn895/Retroactive/releases/download/#{version}/Retroactive.#{version}.zip"
  appcast "https://github.com/cormiertyshawn895/Retroactive/releases.atom"
  name "Retroactive"
  desc "Run Apple apps on incompatible OS versions"
  homepage "https://github.com/cormiertyshawn895/Retroactive"

  app "Retroactive #{version}/Retroactive (right click to open).app"

  zap delete: "~/Library/Caches/com.retroactive.Retroactive"
end
