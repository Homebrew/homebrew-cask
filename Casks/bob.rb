cask "bob" do
  version "0.10.0"
  sha256 "2afc9650e5a470d3c180d2151bb5f727dc4cff6e348bb13b4f5f0f7f524bdf09"

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.zip"
  name "Bob"
  desc "Translation application for text, pictures, and manual input"
  homepage "https://github.com/ripperhe/Bob"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Bob.app"

  zap trash: [
    "~/Library/Caches/com.ripperhe.Bob",
    "~/Library/Preferences/com.ripperhe.Bob.plist",
  ]
end
