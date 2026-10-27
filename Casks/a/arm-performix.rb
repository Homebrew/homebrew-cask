cask "arm-performix" do
  arch arm: "arm64", intel: "x64"

  version "2026.4.0"
  sha256 arm:   "4ea7d8103e3b6ebfe619929aaec05980e30f9f2726de923b5330a11e6e66e39e",
         intel: "2291f9a83ae19574b505242bdf13d9835602984c7a727cbda7a43c5608dc1011"

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
