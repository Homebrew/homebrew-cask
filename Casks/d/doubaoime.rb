cask "doubaoime" do
  version "1.0.0,1000002"
  sha256 "a799f49d28677b2f0587f733a899a60d098e1526f6efbb85e39528062d79f224"

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
      download_url = json.dig("data", "url")
      build = download_url[regex, 1] if download_url

      "#{short_version},#{build}" if short_version && build
    end
  end

  depends_on :macos

  installer manual: "DoubaoImeInstaller_v#{version.csv.second}.app"

  uninstall delete: "/Library/Input Methods/DoubaoIme.app"

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
