cask "tone3000" do
  version "0.0.7"
  sha256 "5f67ce1659ae3b7226db469ed5b58fbc962db9e5d208cbab420e6738c91fba4d"

  url "https://github.com/tone-3000/tone3000-plugin/releases/download/v#{version}/TONE3000-v#{version}-macos-universal.pkg"
  name "TONE3000"
  desc "Amp modeling plug-in for Neural Amp Modeler captures and impulse responses"
  homepage "https://www.tone3000.com/"

  depends_on :macos

  pkg "TONE3000-v#{version}-macos-universal.pkg"

  uninstall pkgutil: "com.tone3000.*"

  zap delete: "/Library/Application Support/TONE3000",
      trash:  [
        "~/Library/Application Support/TONE3000",
        "~/Library/Caches/com.TONE3000.TONE3000",
        "~/Library/Logs/TONE3000",
        "~/Library/TONE3000",
        "~/Library/WebKit/com.TONE3000.TONE3000",
      ]
end
