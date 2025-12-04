cask "llamabarn" do
  version "0.13.0"
  sha256 "1aad0dfab085e0bbc4779d551344ca53d2ace37ef4e07bfdb91386b2281bbeb9"

  url "https://github.com/ggml-org/LlamaBarn/releases/download/#{version}/LlamaBarn.dmg"
  name "LlamaBarn"
  desc "Menu bar app for running local LLMs"
  homepage "https://github.com/ggml-org/LlamaBarn"

  livecheck do
    url "https://releases.llamabarn.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "LlamaBarn.app"

  uninstall quit: "app.llamabarn.LlamaBarn"

  zap trash: [
    "~/Library/Application Support/LlamaBarn",
    "~/Library/Caches/app.llamabarn.LlamaBarn",
    "~/Library/HTTPStorages/app.llamabarn.LlamaBarn",
    "~/Library/HTTPStorages/app.llamabarn.LlamaBarn.binarycookies",
    "~/Library/Preferences/app.llamabarn.LlamaBarn.plist",
    "~/Library/WebKit/app.llamabarn.LlamaBarn",
  ]
end
