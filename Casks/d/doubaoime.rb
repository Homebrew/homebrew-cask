cask "doubaoime" do
  version "1.0.3,1000302,2"
  sha256 "45c19afc498e3257c9828c4434181cb389b8df4510ea8c063ca02a4ab4a86e31"

  url "https://lf-wave.doubaocdn.com/obj/doubao-ime/app/macos/DoubaoImeInstaller_v#{version.csv.second}_#{version.csv.third}_release.zip"
  name "Doubao Input Method"
  name "豆包输入法"
  desc "Chinese input method with voice input and intelligent suggestions"
  homepage "https://shurufa.doubao.com/pc"

  livecheck do
    url "https://shurufa.doubao.com/api/v1/app/download_url?platform=macos"
    regex(/DoubaoImeInstaller[._-]v?(\d+)[._-](\d+(?:_\d+)*)[._-]release\.zip/i)
    strategy :json do |json, regex|
      short_version = json.dig("data", "version_name")&.sub(/\Av/i, "")
      match = json.dig("data", "url")&.match(regex)
      next if short_version.blank? || match.blank?

      "#{short_version},#{match[1]},#{match[2]}"
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
