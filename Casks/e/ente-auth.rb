cask "ente-auth" do
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "4.4.25"

  on_macos do
    sha256 "a1a2f979feb28d4b1cf210190ed0e2efe22cbbb42edc2c22545fd244567049c0"

    app "Ente Auth.app"

    zap trash: [
      "~/Library/Application Scripts/io.ente.auth.mac",
      "~/Library/Containers/io.ente.auth.mac",
    ]
  end
  on_linux do
    sha256 "c85f4a9a75e8b97a54f99a7f6db4307275b42f6465d76515354fe42231e12b85"

    depends_on arch: :x86_64

    app_image "ente-auth-v#{version}-x86_64.AppImage", target: "Ente Auth.AppImage"
  end

  url "https://github.com/ente-io/ente/releases/download/auth-v#{version}/ente-auth-v#{version}#{url_end}",
      verified: "github.com/ente-io/ente/"
  name "Ente Auth"
  desc "Desktop client for Ente Auth"
  homepage "https://ente.io/auth/"

  livecheck do
    url :url
    regex(/^auth[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end
end
