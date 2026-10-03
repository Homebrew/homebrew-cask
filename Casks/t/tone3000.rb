cask "tone3000" do
  version "0.0.11"
  sha256 "49c819c07c84d1f8f256763a2f070c70020cc5ccfefbfb85047257d27934d6a0"

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
