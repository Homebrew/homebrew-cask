cask "fx-cast-bridge" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "2e8dd783be80c21b5b25615284046df7ea7322dba80e96f09c93a329f3f6b6fb",
         intel: "f24e347fd240d5e74b488c83aee8c939b5abf7498dd047b4d3cdb5912a71e8aa"

  url "https://github.com/hensm/fx_cast/releases/download/v#{version}/fx_cast_bridge-#{version}-#{arch}.pkg",
      verified: "github.com/hensm/fx_cast/"
  name "fx_cast Bridge"
  desc "Bridge helper for fx_cast Firefox extension to enable Chromecast support"
  homepage "https://hensm.github.io/fx_cast/"

  livecheck do
    url "https://hensm.github.io/fx_cast/updates.json"
    regex(/fx_cast_bridge[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.pkg/i)
    strategy :json do |json, regex|
      json.dig("fx_cast_bridge", "updates")&.map do |update|
        update_link = update.dig("platforms", "mac", arch, "update_link")
        next if update_link.blank?

        update_link[regex, 1]
      end
    end
  end

  pkg "fx_cast_bridge-#{version}-#{arch}.pkg"

  uninstall pkgutil: "tf.matt.fx_cast_bridge"

  # No zap stanza required
end
