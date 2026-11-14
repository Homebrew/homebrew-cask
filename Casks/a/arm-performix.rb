cask "arm-performix" do
  arch arm: "arm64", intel: "x64"
  appimage_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "2026.4.1"
  sha256 arm:          "c07c669c3956dc422d95b051020c99d52e5cfa2deb6e0f9a6d78ec1b7d5f30e5",
         intel:        "66bf5767b30506af8bf325f3744c3552643bcdb5d8744d5ff5308268c4f501ff",
         arm64_linux:  "ab796bf6089a97dbc6b4fa3de57613ed325cf66816ed28f1bf4d715742bad70b",
         x86_64_linux: "0fdeea70aff11e77d2052f7097037919c98580ff51c9f38a2bc90154c9b1096f"

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

    app_image "ArmPerformix-linux-#{appimage_arch}.AppImage"
    binary "ArmPerformix-linux-#{appimage_arch}.AppImage", target: "arm-performix"

    zap trash: "~/.config/Arm Performix"
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
