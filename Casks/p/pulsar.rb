cask "pulsar" do
  arch arm:   on_system_conditional(macos: "Silicon.", linux: "ARM."),
       intel: on_system_conditional(macos: "Intel.")
  arch_suffix = on_arch_conditional arm: "-arm64"
  os macos: "Mac", linux: "Linux"
  file_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.132.1"
  sha256 arm:          "a8e89b56872b40a1f23dadd547c13a74463b0271cf2ac9fb44306c4342756ce6",
         intel:        "1aa1bb588baa44bcb3b5f11a2b3d910a59e6594ee3a7f087feb5042d133970b8",
         arm64_linux:  "27a25a64c3ebf76590c3cecb4dcce91ac7586be0c66ff16c5026631e8aa8250c",
         x86_64_linux: "4527276473c48d454e0899a0cdb6bf04f1d2bd8eb452d35aad048d00ef8a6537"

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
