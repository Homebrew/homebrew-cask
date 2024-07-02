cask "mendeley" do
  version "1.19.8"
  sha256 "5f6b9fe7a04b6b12a81f4300864b243bbe4e4ec31aa71f6b260be519493b1d44"

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name "Mendeley Desktop"
  desc "Research management tool"
  homepage "https://www.mendeley.com/reference-management/mendeley-desktop"

  deprecate! date: "2024-03-12", because: :discontinued

  app "Mendeley Desktop.app"

  zap trash: [
    "~/Library/Application Support/Mendeley Desktop",
    "~/Library/Application Support/Mendeley Ltd.",
    "~/Library/Caches/Mendeley Desktop",
    "~/Library/Preferences/com.mendeley.Mendeley Desktop.plist",
    "~/Library/Saved Application State/com.mendeley.desktop.savedState",
  ]

  caveats do
    requires_rosetta
    <<~EOS
      mendeley-reference-manager is the successor to this software:

        brew install --cask mendeley-reference-manager
    EOS
  end
end
