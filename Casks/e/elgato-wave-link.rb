cask "elgato-wave-link" do
  version "1.8.3.942"
  sha256 "7b8d317b2ea25c55a56da047a999873d77db9d4044dea6821ece2790f7e029d5"

  url "https://edge.elgato.com/egc/macos/wavelink/#{version.major_minor_patch}/WaveLink_#{version}.pkg",
      user_agent: :fake
  name "Elgato Wave Link"
  desc "Software custom-built for content creation"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://www.elgato.com/graphql?query=query%20contentJson(%24identifier%3A%5BString%5D%24contentType%3AString%24options%3AContentJsonOptionsInput)%7BcontentJson(identifiers%3A%24identifier%20contentType%3A%24contentType%20options%3A%24options)%7Bidentifier%20entries%7D%7D&operationName=contentJson&variables=%7B%22contentType%22%3A%22downloads%22%2C%22identifier%22%3A%5B%22downloads%22%5D%2C%22options%22%3A%7B%22level%22%3A1%7D%7D&locale=en-US"
    regex(/WaveLink[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :catalina"

  pkg "WaveLink_#{version}.pkg"

  uninstall delete:    "/Applications/Elgato Wave Link.app",
            launchctl: "com.elgato.WaveLink",
            quit:      "com.elgato.WaveLink",
            pkgutil:   "com.elgato.pkg.WaveLink"

  zap trash: [
    "~/Library/Logs/WaveLink",
    "~/Library/Preferences/com.elgato.WaveLink.plist",
  ]
end
