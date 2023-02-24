cask "fx-cast-bridge" do
  version "0.3.0"
  arch arm: "arm64", intel: "x64"
  sha256 intel: "f24e347fd240d5e74b488c83aee8c939b5abf7498dd047b4d3cdb5912a71e8aa",
         arm: "2e8dd783be80c21b5b25615284046df7ea7322dba80e96f09c93a329f3f6b6fb"

  url "https://github.com/hensm/fx_cast/releases/download/v#{version}/fx_cast_bridge-#{version}-#{arch}.pkg",
    verified: "https://github.com/hensm/fx_cast"

  name "fx_cast Bridge"
  desc "The bridge program that helps the fx_cast Firefox extension enable Chromecast support"
  homepage "https://hensm.github.io/fx_cast/"

  livecheck do
    url "https://github.com/hensm/fx_cast/releases"
    strategy :github_latest do |page|
      # look for the latest bridge release since some releases are bridge-only
      # or extension-only, falling back to version if none is found
      found = page.scan(/href=.*?fx_cast_bridge[._-]?(\d{4}.\d{4}.\d{4})[._-]\w{3,5}\.pkg/i)
        .map { |match| match&.first }
      !found.empty? ? found : version
    end
  end

  pkg "fx_cast_bridge-#{version}-#{arch}.pkg"

  uninstall pkgutil: "tf.matt.fx_cast_bridge"
end
