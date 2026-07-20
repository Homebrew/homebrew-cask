cask "font-ipamjmincho" do
  version "006.01"
  sha256 "35494e0f2896f38b3f7369a8421a895cea6440a42c0a66ac95eab47d6ed25b68"

  url "https://dforest.watch.impress.co.jp/library/i/ipamjfont/10750/ipamjm#{version.no_dots}.zip",
      verified: "dforest.watch.impress.co.jp/library/i/ipamjfont/10750/"
  name "IPAmjMincho"
  name "IPAmj明朝"
  homepage "https://moji.or.jp/mojikiban/font/"

  livecheck do
    url :homepage
    regex(/Ver\.v?(\d+(?:\.\d+)+)/i)
  end

  font "ipamjm.ttf"

  # No zap stanza required
end
