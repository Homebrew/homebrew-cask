cask "retroactive" do
  version "2.1"
  sha256 "bb1db2b54880164d577e2bc5e083046c2d3c6749de511652a84c5f7d2ce14142"

  url "https://github.com/cormiertyshawn895/Retroactive/releases/download/#{version}/Retroactive.#{version}.zip"
  name "Retroactive"
  desc "Run Apple apps on incompatible OS versions"
  homepage "https://github.com/cormiertyshawn895/Retroactive"

  deprecate! date: "2024-08-21", because: :discontinued

  depends_on macos: ">= :high_sierra"

  app "Retroactive #{version}/Retroactive.app"

  zap delete: "~/Library/Caches/com.retroactive.Retroactive"

  caveats do
    requires_rosetta
  end
end
