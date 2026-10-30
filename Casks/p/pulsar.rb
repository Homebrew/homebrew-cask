cask "pulsar" do
  arch arm:   on_system_conditional(macos: "Silicon.", linux: "ARM."),
       intel: on_system_conditional(macos: "Intel.")
  arch_suffix = on_arch_conditional arm: "-arm64"
  os macos: "Mac", linux: "Linux"
  file_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.133.0"
  sha256 arm:          "dcf41b070bff42677490ee74f97242110de23df3579f26ed7e71d5548700f627",
         intel:        "c2cd3f5d93b622d94435b177ea386cebcfee9979cbc5dde577ae8896d81a95f6",
         arm64_linux:  "96e84e2a62a94938dc411db2fe5b35dbeb143b9a84133c0b899f07f46d6e9d17",
         x86_64_linux: "456c13ec0e36f0b92ffe016e584f4dc77be72ce12083b479a3af68e912655cf9"

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
