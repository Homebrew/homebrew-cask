cask "koodo-reader" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "2.3.9"
  sha256 arm:          "7fff8eb2c04475d06783ab2a474e5ea9127b76191164095445aed6c3faf926e1",
         intel:        "5301b15c203aba67737f6f0a6796ac93acd5fe95218a8aa802d00dace742034d",
         arm64_linux:  "0513069ba1c6c82e2fe73a3c7742a0b85d81d734b3a75dbbe5792e34da6772c2",
         x86_64_linux: "f650f061141c81bbf2af05e0d07fc8ab73e2118dc45e4ddc6e7a8828846c5e81"

  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  url "https://github.com/koodo-reader/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-#{arch}.#{url_end}",
      verified: "github.com/koodo-reader/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source e-book reader"
  homepage "https://www.koodoreader.com/en"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on macos: :big_sur

    app "Koodo Reader.app"

    zap trash: [
      "~/Library/Application Support/koodo-reader",
      "~/Library/Preferences/xyz.960960.koodo.plist",
      "~/Library/Saved Application State/xyz.960960.koodo.savedState",
    ]
  end

  on_linux do
    app_image "Koodo-Reader-#{version}-#{arch}.AppImage", target: "Koodo Reader.AppImage"
  end
end
