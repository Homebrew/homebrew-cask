cask "arm-performix" do
  arch arm: "arm64", intel: "x64"

  version "2026.3.4"
  sha256 arm:   "7c93bf6a15460dbf8240943d751fcf4eb86b54adc9ddd0886d47c9cd00039a5b",
         intel: "c61f12ab6ad78c7587d883414b38dd3db300723de428077f2e8602b97b57c57e"

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
