cask "arm-performix" do
  arch arm: "arm64", intel: "x64"
  appimage_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "2026.4.2"
  sha256 arm:          "6222806867b33c9d98aa1861152cf6dac306e4483e266e088480a98cde87a7e7",
         intel:        "59866631d17d82d72f17fae3223939aaa4412ba95969f37841620ae9485fe4cf",
         arm64_linux:  "40446ac01dd20b92d118d44a898bae3bfdc7407e186ce6c7c83c82bfd73c52ef",
         x86_64_linux: "2a4b5217d330d6c2bb28e928259ce7e05614c8e81acc4d41ebbdf9fe232c97af"

  on_macos do
    url "https://artifacts.tools.arm.com/arm-performix/app/#{version}/darwin/#{arch}/ArmPerformix-darwin-#{arch}.pkg"

    depends_on macos: :monterey

    pkg "ArmPerformix-darwin-#{arch}.pkg"
    binary "/Applications/Arm Performix.app/Contents/assets/apx/apx"
    generate_completions_from_executable "/Applications/Arm Performix.app/Contents/assets/apx/apx",
                                         shells:                 [:bash, :zsh, :pwsh],
                                         shell_parameter_format: :cobra

    uninstall pkgutil: "com.arm.arm-performix"

    zap trash: [
      "~/Library/Application Support/Arm Performix",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.arm.arm-performix.*",
      "~/Library/Logs/Arm Performix",
      "~/Library/Preferences/com.arm.arm-performix.*",
    ]
  end
  on_linux do
    url "https://artifacts.tools.arm.com/arm-performix/app/#{version}/linux/#{arch}/ArmPerformix-linux-#{appimage_arch}.AppImage"

    app_image "ArmPerformix-linux-#{appimage_arch}.AppImage", target: "Arm Performix.AppImage"
    binary "ArmPerformix-linux-#{appimage_arch}.AppImage", target: "arm-performix"

    zap trash: [
          "~/.config/apxd",
          "~/.config/Arm Performix",
          "~/.local/state/apxd",
          "~/.local/state/arm/performix",
        ],
        rmdir: [
          "~/.local/share/apxd",
          "~/.local/state/arm",
        ]
  end

  name "Arm Performix"
  desc "Performance analysis toolkit for Arm server and cloud environments"
  homepage "https://developer.arm.com/servers-and-cloud-computing/arm-performix", browsed: "2026-08-27"

  livecheck do
    url "https://artifacts.tools.arm.com/its-arm-performix/app/latest/darwin/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
end
