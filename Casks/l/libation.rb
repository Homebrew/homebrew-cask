cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.8"
  sha256 arm:   "05303d5e91b36fed5e336ab312af2922deec2a78b2d8e4fc029d30bf4007712c",
         intel: "2356f743059a81b81fbe360494eec42cab40b8872b187351be4549feb32302e8"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg",
      verified: "github.com/rmcrackan/Libation/"
  name "Libation"
  desc "Audible audiobook manager and liberator"
  homepage "https://getlibation.com/"

  depends_on macos: :ventura

  app "Libation.app"
  binary "#{appdir}/Libation.app/Contents/MacOS/LibationCli", target: "libationcli"

  zap trash: [
    "~/Library/Application Support/Libation",
    "~/Library/Preferences/org.libation.macos.plist",
  ]
end
