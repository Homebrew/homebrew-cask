cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "2.0.0"
  sha256 arm:          "82f5bdf5b81069a2aeb1626309be6f0f015c30f96dbd44bd00dc412ab64bfdad",
         intel:        "82f5bdf5b81069a2aeb1626309be6f0f015c30f96dbd44bd00dc412ab64bfdad",
         arm64_linux:  "4e2ba2fb83aa497ac7ac312206d331af1ad416229261f226306d7d05a0f9ff54",
         x86_64_linux: "efa4c5c7338108db455220dce75a837326e772ffb5b93034aced32cfec0bee79"

  on_macos do
    depends_on macos: :ventura

    app "p2p.kiwi.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    app_image "p2p-kiwi_#{arch}.AppImage", target: "p2p.kiwi.AppImage"
  end

  url "https://github.com/dont-be-evil-company/p2p.kiwi/releases/download/v#{version}/p2p-kiwi_#{url_end}"
  name "p2p.kiwi"
  desc "Cross-platform screen sharing tool"
  homepage "https://p2p.kiwi/"
end
