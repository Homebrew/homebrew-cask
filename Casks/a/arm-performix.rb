cask "arm-performix" do
  arch arm: "arm64", intel: "x64"

  version "2026.3.3"
  sha256 arm:   "d6ca9e7d10785a19b11a9c27bcb64ff8f9146f5062e520a8d87fd76a4d2cc8cc",
         intel: "76a4a8d97ad6cab2fc1cb612f3d9ef8e99836bdcee42fba67a5d42c23ffdd9d1"

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
