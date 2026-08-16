cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.7.9"
  sha256 arm:   "d8fc01a2f6f1f6619cbb2771d4f50a5d6fc5587d59d9f11084f7c1bd6169cab4",
         intel: "379c4e98257464fc5b697ad72ca23a51def892317ff94cf103d83954a39bd393"

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
