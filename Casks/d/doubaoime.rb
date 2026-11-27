cask "doubaoime" do
  version "1.1.2,1010204"
  sha256 "68b0a205e5bfc79abb59ecf3d32d61d6007895e00464aabcf65b26fc8ab11e6a"

  url "https://lf-wave.doubaocdn.com/obj/doubao-ime/app/macos/DoubaoImeInstaller_v#{version.csv.second}_release.zip"
  name "Doubao Input Method"
  name "豆包输入法"
  desc "Chinese input method with voice input and intelligent suggestions"
  homepage "https://shurufa.doubao.com/pc"

  livecheck do
    url "https://shurufa.doubao.com/api/v1/app/download_url?platform=macos"
    regex(/DoubaoImeInstaller[._-]v?(\d+)[._-]release\.zip/i)
    strategy :json do |json, regex|
      short_version = json.dig("data", "version_name")&.sub(/\Av/i, "")
      match = json.dig("data", "url")&.match(regex)
      next if short_version.blank? || match.blank?

      "#{short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on :macos
  container nested: "DoubaoImeInstaller_v#{version.csv.second}.app/Contents/Resources/DoubaoIme.zip"

  input_method "DoubaoIme.app", target: "/Library/Input Methods/DoubaoIme.app"

  zap trash: [
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
    logout
  end
end
