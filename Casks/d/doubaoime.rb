# typed: strict
# frozen_string_literal: true

cask "doubaoime" do
  version "0.9.1"
  sha256 "cdfa740c631279069488d6ea208e157782af3d000a5f31dd5ea2af6b670b68f8"

  url "https://lf-wave.doubaocdn.com/obj/doubao-ime/app/mac/DoubaoImeInstaller_v#{version}.zip",
      verified: "lf-wave.doubaocdn.com/obj/doubao-ime/"
  name "豆包输入法"
  desc "AI-powered Chinese input method by ByteDance"
  homepage "https://ime.doubao.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: :catalina

  postflight do
    system_command "/bin/sh",
                   args: [
                     "-c",
                     "cd '#{staged_path}/DoubaoImeInstaller_v#{version}.app/Contents/Resources' && " \
                     "APP_NAME=DoubaoIme sh install.sh",
                   ],
                   sudo: true
  end

  uninstall script: {
    executable: "/bin/sh",
    args:       [
      "-c",
      "sudo rm -rf '/Library/Input Methods/DoubaoIme.app' && " \
      "defaults delete com.apple.HIToolbox AppleEnabledInputSources 2>/dev/null; " \
      "killall SystemUIServer TextInputMenuAgent cfprefsd 2>/dev/null || true",
    ],
    sudo:       true,
  }

  zap trash: [
    "/tmp/DoubaoIme",
    "~/Library/Application Support/DoubaoIme",
    "~/Library/Caches/com.bytedance.inputmethod.doubaoime",
    "~/Library/Caches/com.bytedance.inputmethod.doubaoime.installer",
    "~/Library/Caches/com.bytedance.inputmethod.doubaoime.settings",
    "~/Library/HTTPStorages/com.bytedance.inputmethod.doubaoime",
    "~/Library/HTTPStorages/com.bytedance.inputmethod.doubaoime.installer",
    "~/Library/HTTPStorages/com.bytedance.inputmethod.doubaoime.settings",
    "~/Library/Preferences/com.bytedance.inputmethod.doubaoime.plist",
    "~/Library/Preferences/com.bytedance.inputmethod.doubaoime.settings.plist",
  ]

  caveats do
    <<~EOS
      安装完成后，请在系统设置的输入法中添加「豆包输入法」。
    EOS
  end
end
