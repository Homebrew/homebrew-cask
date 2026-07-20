cask "rnote" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.2+239"
  sha256 arm:   "6db9e55b9a2c7ca19f4f02f779f930926da289ead4f6086915dc48e70159410b",
         intel: "fe321bdaa4c065c2ea3d757210316e6c995fa132ada484ce65ebe12586b4a902"

  url "https://gitlab.com/api/v4/projects/44053427/packages/generic/rnote_macos/#{version}/Rnote-#{version}_#{arch}.dmg",
      verified: "gitlab.com/api/v4/projects/44053427/packages/generic/rnote_macos/"
  name "Rnote"
  desc "Sketch and take handwritten notes"
  homepage "https://rnote.flxzt.net/"

  # This matches the version from arch-specific asset file names, as releases
  # may not provide assets for both ARM and Intel.
  livecheck do
    url "https://gitlab.com/api/v4/projects/44053427/releases"
    regex(/Rnote[._-]v?(\d+(?:\.\d+)+(?:\+\d+)?)[._-]#{arch}/i)
    strategy :json do |json, regex|
      json.map do |item|
        item.dig("assets", "links")&.filter_map do |asset|
          asset["direct_asset_url"]&.[](regex, 1)
        end
      end.flatten
    end
  end

  depends_on macos: :ventura

  app "Rnote.app"

  zap trash: "~/Library/Preferences/net.flxzt.Rnote.plist"
end
