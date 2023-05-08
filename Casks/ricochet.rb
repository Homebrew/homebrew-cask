cask "ricochet" do
  version "1.1.4.1"
  sha256 "e5fbcbebe51fa52d9443fd2a07714d0e6e087c314a9c3eecf73ed4da8ca9e8aa"

  url "https://github.com/ricochet-im/ricochet/releases/download/v#{version.major_minor_patch}/ricochet-#{version}-macos.dmg"
  name "Ricochet"
  desc "Anonymous peer-to-peer instant messaging"
  homepage "https://github.com/ricochet-im/ricochet"

  # Upstream sometimes replaces a release asset and bumps the version, so it
  # doesn't correspond to the tagged version anymore. For example, they may
  # publish `ricochet-1.2.3.1-macos.dmg` for a `1.2.3` release, so we have to
  # check the release assets to guarantee we identify the full version.
  livecheck do
    url :url
    regex(/^ricochet[._-]v?(\d+(?:\.\d+)+).*?\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "Ricochet.app"

  zap trash: [
    "~/Library/Application Support/Ricochet",
    "~/Library/Saved Application State/im.ricochet.savedState",
  ]
end
