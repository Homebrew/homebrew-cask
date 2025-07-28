cask "devswitcher2" do
  version "2.1.1"
  sha256 "8bc5c754bce105ff13c3c42deff9b3e9a670333845cc56c1ad8f6d67c9163c68"

  url "https://github.com/vaspike/DevSwitcher2/releases/download/v#{version}/DevSwitcher2-#{version}.dmg"
  name "DevSwitcher2"
  desc "Efficient and elegant macOS window switching tool"
  homepage "https://github.com/vaspike/DevSwitcher2"

  # Minimum system requirements for the app
  depends_on macos: ">= :monterey"

  app "DevSwitcher2.app"

  # Cleanup operations during uninstall
  uninstall quit: "com.rivermao.DevSwitcher2"

  # Related file cleanup
  zap trash: [
    "~/Library/Application Support/DevSwitcher2",
    "~/Library/Caches/com.rivermao.DevSwitcher2",
    "~/Library/Preferences/com.rivermao.DevSwitcher2.plist",
    "~/Library/Saved Application State/com.rivermao.DevSwitcher2.savedState",
    "~/Library/WebKit/com.rivermao.DevSwitcher2",
  ]

  # Software conflict declaration (if there are other similar tools)
  conflicts_with cask: ["alt-tab"]

  # User notices
  caveats <<~EOS
    DevSwitcher2 requires Accessibility permissions to function properly.
    > DevSwitcher2 需要辅助功能权限才能正常工作。

    On first launch, please follow the in-app guidance to grant permissions at:
    System Preferences → Security & Privacy → Privacy → Accessibility
    > 首次启动时，请按照应用内的指引在以下位置授予权限：
    > 系统偏好设置 → 安全性与隐私 → 隐私 → 辅助功能

    Default hotkeys / 默认快捷键：
    - Command + ` (backtick): Switch between windows within the same app
      Command + ` (反引号): 同应用内窗口切换
    - Command + Tab: Switch between applications (needs to be enabled in preferences)
      Command + Tab: 应用间切换（需要在偏好设置中启用）

    For more information / 更多信息: https://github.com/vaspike/DevSwitcher2
  EOS
end 
