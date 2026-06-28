cask "altersend" do
  on_macos do
    arch arm: "-arm64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "1.3.0"
  sha256 arm:          "9cdc23e64c5a0c8061bdab0c30e99015ff72196f2b2f97f1a35f6a80b38a2f3e",
         intel:        "b9247fa96b159cd5cd47c73c38d795e43496411ee19ed3395fcc90557ab485f1",
         arm64_linux:  "1ff8777e50dc520f6f9025b8af3ded81004fa17e34235975629047e7f0a17202",
         x86_64_linux: "90fe44646c91403cb7eba9e10af7bc881bc2f78514bfc405737b6f36705dffb4"

  artifact = on_system_conditional macos: "AlterSend-#{version}#{arch}.dmg",
                                   linux: "AlterSend-#{arch}.AppImage"

  url "https://github.com/denislupookov/altersend/releases/download/v#{version}/#{artifact}",
      verified: "github.com/denislupookov/altersend/"
  name "AlterSend"
  desc "Secure, peer-to-peer file transfer app"
  homepage "https://altersend.com/"

  on_macos do
    depends_on macos: :monterey

    app "AlterSend.app"

    zap trash: [
      "~/Library/Application Support/AlterSend",
      "~/Library/Preferences/com.altersend.desktop.plist",
    ]
  end

  on_linux do
    app_image artifact, target: "AlterSend.AppImage"
  end
end
