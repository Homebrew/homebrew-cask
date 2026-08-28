cask "arm-performix" do
  arch arm: "arm64", intel: "x64"

  version "2026.3.2"
  sha256 arm:   "9faf4b7c3c583bc7ddbfc56b80b4b58405c4065280f9fd3662febc704d5a1b69",
         intel: "4dea2237e66bb69aad1e03e1d79536872f1df58cce95c954f3f65176c57d1f3a"

  url "https://artifacts.tools.arm.com/arm-performix/app/#{version}/darwin/#{arch}/ArmPerformix-darwin-#{arch}.pkg"
  name "Arm Performix"
  desc "Performance analysis toolkit for Arm server and cloud environments"
  homepage "https://developer.arm.com/servers-and-cloud-computing/arm-performix", browsed: "2026-08-27"

  livecheck do
    url "https://artifacts.tools.arm.com/its-arm-performix/app/latest/darwin/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  pkg "ArmPerformix-darwin-#{arch}.pkg"
  binary "/Applications/Arm Performix.app/Contents/assets/apx/apx"
  generate_completions_from_executable "/Applications/Arm Performix.app/Contents/assets/apx/apx",
                                       shells:                 [:bash, :zsh, :pwsh],
                                       shell_parameter_format: :cobra

  uninstall pkgutil: "com.arm.arm-performix"

  zap trash: [
    "~/.local/share/apxd",
    "~/Library/Application Support/Arm Performix",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.arm.arm-performix.*",
    "~/Library/Logs/Arm Performix",
    "~/Library/Preferences/com.arm.arm-performix.*",
  ]
end
