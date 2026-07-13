cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.22"
  sha256 arm:          "3dd87e74dacd6365b458b42c8927dae540f0cae7e1ff722f4adddfcf6f2d4077",
         intel:        "6b68b7e5043f338e4fc3e86795c10bce7a5f9cb72ec5e4a2cbaf583c65c76abc",
         arm64_linux:  "3595369fcb1ac1875c09c9b89cbffc206372d740c8f906342394e4d230c6b064",
         x86_64_linux: "b17f5c0544c6b62c05eb5cc42c5d6bfaf6b41fb7d3d5f46c804435ec4f8589d4"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "OpenWork.app"

    zap trash: [
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
    ]
  end

  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end
end
