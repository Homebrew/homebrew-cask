cask "chiaki-ng" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0"
  sha256 arm:   "ea63939ec3f63ef5e31c3300bf9c14909201fa5dd7c3d9d16f7bf7137ddc417f",
         intel: "7a5e5c044d94bbd129864585fc0ab74080140e90fb02b74b14de36367569103e"

  url "https://github.com/streetpea/chiaki-ng/releases/download/v#{version}/chiaki-ng-macos_#{arch}-Release.zip",
      verified: "github.com/streetpea/chiaki-ng/"
  name "chiaki-ng"
  desc "PlayStation remote play client next-generation"
  homepage "https://streetpea.github.io/chiaki-ng/"

  livecheck do
    url "https://github.com/streetpea/chiaki-ng/releases"
  end

  app "chiaki-ng.app"

  zap trash: [
    "~/Library/Application Support/Chiaki",
    "~/Library/Preferences/com.chiaki.Chiaki.plist",
  ]

  caveats do
    requires_rosetta
  end
end
