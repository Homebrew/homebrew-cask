cask "fantasy-map-generator" do
  on_arm do
    version "1.89.36"
    sha256 :no_check

    url "https://github.com/Azgaar/Fantasy-Map-Generator/releases/download/current/fmg-darwin-arm64.zip",
        verified: "github.com/Azgaar/Fantasy-Map-Generator/"

    app "Azgaars_Fantasy_Map_Generator.app"
  end
  on_intel do
    version "1.3"
    sha256 "6aba1ba5b3c358fe4b09d2cbd7449bc603213cbc52de622250eaabaf8eae6d6d"

    url "https://github.com/Azgaar/Fantasy-Map-Generator/releases/download/v#{version}/FMG-macos-x64.dmg",
        verified: "github.com/Azgaar/Fantasy-Map-Generator/"

    app "Azgaar's Fantasy Map Generator.app"
  end

  name "Azgaar's Fantasy Map Generator"
  desc "Generate interactive and highly customizable maps"
  homepage "https://azgaar.github.io/Fantasy-Map-Generator"

  disable! date: "2024-07-03", because: :no_longer_available

  zap trash: [
    "~/Library/Application Support/azgaars-fantasy-map-generator-nativefier-2aab42",
    "~/Library/Preferences/com.electron.nativefier.azgaars-fantasy-map-generator-nativefier-2aab42.plist",
  ]
end
