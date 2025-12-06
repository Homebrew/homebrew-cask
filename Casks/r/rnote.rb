cask "rnote" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.1+215"
  sha256 arm:   "940af287a78ee242b05b14f649b32e9cc297090e6d7d69759945f97fe49c55b0",
         intel: "c985ea4757b9ac03cd7485ac824d3488a31b52b98fdb221a1d5ee062d58d7af8"

  url "https://gitlab.com/api/v4/projects/44053427/packages/generic/rnote_macos/#{version}/Rnote-#{version}_#{arch}.dmg",
      verified: "gitlab.com/api/v4/projects/44053427/packages/generic/rnote_macos/"
  name "Rnote"
  desc "Sketch and take handwritten notes"
  homepage "https://rnote.flxzt.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/44053427/releases"
    regex(/^v?(\d+(?:\.\d+)+(?:\+\d+)?)$/i)
    strategy :json do |json, regex|
      json.filter_map { |item| item["tag_name"]&.[](regex, 1) }
    end
  end

  depends_on macos: ">= :big_sur"

  app "Rnote.app"

  zap trash: "~/Library/Preferences/net.flxzt.Rnote.plist"
end
