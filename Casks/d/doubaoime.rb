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
  container nested: "DoubaoImeInstaller_v#{version}.app/Contents/Resources/DoubaoIme.zip"

  input_method "DoubaoIme.app"

  preflight do
    system_command "/usr/bin/xattr", args: ["-d", "-r", "com.apple.quarantine", "#{staged_path}/DoubaoIme.app"]
  end

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
end
