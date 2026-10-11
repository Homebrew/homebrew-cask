cask "doubaoime" do
  version "1.0.2,1000207,20261010_175807_23027789"
  sha256 "0cef9fa739d52b7603298e5d15024936e157371f156539333b2356681c1b07bc"

  url "https://lf-wave.doubaocdn.com/obj/doubao-ime/app/macos/DoubaoImeInstaller_v#{version.csv.second}_release_#{version.csv.third}.zip"
  name "Doubao Input Method"
  name "豆包输入法"
  desc "Chinese input method with voice input and intelligent suggestions"
  homepage "https://shurufa.doubao.com/pc"

  livecheck do
    url "https://shurufa.doubao.com/api/v1/app/download_url?platform=macos"
    regex(/DoubaoImeInstaller[._-]v?(\d+)[._-]release[._-](\d+(?:_\d+)*)\.zip/i)
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
