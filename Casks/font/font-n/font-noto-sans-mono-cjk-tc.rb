cask "font-noto-sans-mono-cjk-tc" do
  version "2.004"
  sha256 "0126cbeef724edf21fbaeb113739adf392679fd90a2897c76159d1141df9e8c6"

  url "https://github.com/notofonts/noto-cjk/releases/download/Sans#{version}/14_NotoSansMonoCJKtc.zip"
  name "Noto Sans Mono CJK TC"
  homepage "https://github.com/notofonts/noto-cjk/tree/main/Sans"

  livecheck do
    cask "font-noto-sans-cjk"
  end

  font "NotoSansMonoCJKtc-Bold.otf"
  font "NotoSansMonoCJKtc-Regular.otf"

  # No zap stanza required
end
