cask "ccv" do
  on_arm do
    version "0.2.2"
    sha256 "e352722be48fb30a9e43f32e95f9b54f50f07c6583844138d9530c45f8e133aa"

    url "https://github.com/ansirotenko/ccv/releases/download/ccv-v#{version}/ccv_#{version}_aarch64.dmg"
  end
  on_intel do
    version "0.2.2"
    sha256 "1afc9130bce976eb62307c5ecf963ce685d24ce7a19056d7b3cbe995920e8298"

    url "https://github.com/ansirotenko/ccv/releases/download/ccv-v#{version}/ccv_#{version}_x64.dmg"
  end

  name "ccv"
  desc "Clipboard history manager for Text, Rtf, Html, Images and Files"
  homepage "https://github.com/ansirotenko/ccv/"

  depends_on macos: ">= :high_sierra"

  app "ccv.app"

  zap trash: [
    "~/Library/Application Support/com.ansirotenko.ccv",
    "~/Library/Logs/com.ansirotenko.ccv",
  ]
end
