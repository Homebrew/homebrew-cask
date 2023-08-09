cask "retroactive" do
  version "2.0"
  sha256 "31053b84e596cf925ca1a3ed8ae18fe54badc40030b54ecc90c0beaf93868376"

  url "https://github.com/cormiertyshawn895/Retroactive/releases/download/#{version}/Retroactive.#{version}.zip"
  name "Retroactive"
  desc "Run Apple apps on incompatible OS versions"
  homepage "https://github.com/cormiertyshawn895/Retroactive"

  app "Retroactive #{version}/Retroactive (right click to open).app"

  zap delete: "~/Library/Caches/com.retroactive.Retroactive"
end
