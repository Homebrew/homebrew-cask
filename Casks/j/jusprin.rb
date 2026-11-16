cask "jusprin" do
  version "2.0.0"
  sha256 "e4db73ce83942ac1cf1fd96c6e90f55e0d3848773b57b53fc582260e98b312fb"

  url "https://github.com/TheSpaghettiDetective/JusPrin/releases/download/jusprin/v#{version}/JusPrin_Mac_universal_V#{version}.dmg"
  name "JusPrin"
  desc "AI-assisted G-code generator for 3D printers"
  homepage "https://github.com/TheSpaghettiDetective/JusPrin"

  livecheck do
    url :url
    regex(%r{^jusprin/v?(\d+(?:\.\d+)+)$}i)
    strategy :github_latest
  end

  depends_on :macos

  app "JusPrin.app"

  zap trash: [
    "~/Library/Application Support/JusPrin2",
    "~/Library/Caches/io.obico.jusprin",
    "~/Library/HTTPStorages/io.obico.jusprin.binarycookies",
    "~/Library/Preferences/io.obico.jusprin.plist",
    "~/Library/Saved Application State/io.obico.jusprin.savedState",
    "~/Library/WebKit/io.obico.jusprin",
  ]
end
