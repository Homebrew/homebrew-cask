cask "rnote" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "0.14.0+227"
    sha256 "63f3178f1fba2b0d2d2ac131766e3f581df4550a1d49dfa3d24e8cc909e44803"

    depends_on macos: ">= :ventura"
  end
  on_intel do
    version "0.13.1+215"
    sha256 "c985ea4757b9ac03cd7485ac824d3488a31b52b98fdb221a1d5ee062d58d7af8"

    depends_on macos: ">= :big_sur"
  end

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

  app "Rnote.app"

  zap trash: "~/Library/Preferences/net.flxzt.Rnote.plist"
end
