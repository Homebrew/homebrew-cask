cask "dozer" do
  version "4.0.0"
  sha256 "d8d37a114c9dab2f16a56e60d8a977115ba34fe408ff7947d0d74028f1f22843"

  url "https://github.com/Mortennn/Dozer/releases/download/v#{version}/Dozer.#{version}.dmg"
  name "Dozer"
  desc "Tool to hide status bar icons"
  homepage "https://github.com/Mortennn/Dozer"

  # upstream discussion, https://github.com/Mortennn/Dozer/issues/178
  disable! date: "2024-12-01", because: :discontinued

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Dozer.app"

  zap trash: [
    "~/Library/Application Support/com.mortennn.Dozer",
    "~/Library/Preferences/com.mortennn.Dozer.plist",
  ]
end
