cask "omlx" do
  version "0.8.4"

  on_sequoia do
    sha256 "4b83f19173fe5ed25d8adf358e9a6a4d4eefb83c14b90bd2ecd29bd1ec139d00"

    url "https://github.com/jundot/omlx/releases/download/v#{version}/oMLX-#{version}-macos15-sequoia.dmg"
  end
  on_tahoe :or_newer do
    sha256 "445c3d42b1ac5dbdd1d8f1eadca0ad4e35dded846026b3ca3d8537dd7ce08a0b"

    url "https://github.com/jundot/omlx/releases/download/v#{version}/oMLX-#{version}-macos26-27.dmg"
  end

  name "oMLX"
  desc "LLM inference server for Apple silicon"
  homepage "https://omlx.ai/"

  # The "latest" release on GitHub can sometimes be an RC version, so we have to
  # check all releases to identify the latest stable version.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  auto_updates true
  depends_on macos: :sequoia

  app "oMLX.app"

  uninstall quit: "app.omlx"

  zap trash: [
    "~/.omlx",
    "~/Library/Application Support/oMLX",
    "~/Library/Caches/app.omlx",
    "~/Library/HTTPStorages/app.omlx*",
    "~/Library/Preferences/app.omlx.plist",
  ]
end
