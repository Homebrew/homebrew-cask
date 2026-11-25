cask "pulsar" do
  arch arm:   on_system_conditional(macos: "Silicon.", linux: "ARM."),
       intel: on_system_conditional(macos: "Intel.")
  arch_suffix = on_arch_conditional arm: "-arm64"
  os macos: "Mac", linux: "Linux"
  file_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.133.1"
  sha256 arm:          "93f42641b58669a1aba5b306a26a6043cf8e3ec12b7813133db511df33e9338c",
         intel:        "d3e15fc9d964bca11d895b470152aa60184e053787723522b59d74b2ea5ca57d",
         arm64_linux:  "439ca62a180e00a17c1ebc0d112c3a34da200a670a264a8fd488ec3bbdd50604",
         x86_64_linux: "98e2ea0ee5d1e26b74b1db125159a08377d9bfc7976b3e5416ee6a1bf2e08673"

  on_macos do
    app "Pulsar.app"
    binary "#{appdir}/Pulsar.app/Contents/Resources/app/ppm/bin/ppm"
    binary "#{appdir}/Pulsar.app/Contents/Resources/pulsar.sh", target: "pulsar"

    zap trash: [
      "~/.pulsar",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.pulsar-edit.pulsar.sfl*",
      "~/Library/Application Support/Pulsar",
      "~/Library/Preferences/dev.pulsar-edit.pulsar.plist",
      "~/Library/Saved Application State/dev.pulsar-edit.pulsar.savedState",
    ]
  end
  on_linux do
    app_image "#{arch}Linux.Pulsar-#{version}#{arch_suffix}.AppImage", target: "Pulsar.AppImage"
    binary "#{arch}Linux.Pulsar-#{version}#{arch_suffix}.AppImage", target: "pulsar"

    zap trash: [
      "~/.config/Pulsar",
      "~/.pulsar",
    ]
  end

  url "https://github.com/pulsar-edit/pulsar/releases/download/v#{version}/#{arch}#{os}.Pulsar-#{version}#{arch_suffix}.#{file_ext}"
  name "Pulsar"
  desc "Text editor"
  homepage "https://pulsar-edit.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
