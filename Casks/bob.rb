cask "bob" do
  version "0.8.0"
  sha256 "042626d373942e6ec2c19dd859e9db82a5c8cc1c9223edf3cba57548ae28a241"

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.zip"
  name "Bob"
  desc "Translation application for text, pictures, and manual input"
  homepage "https://github.com/ripperhe/Bob"

  depends_on macos: ">= :sierra"

  app "Bob.app"

  zap trash: [
    "~/Library/Caches/com.ripperhe.Bob",
    "~/Library/Preferences/com.ripperhe.Bob.plist",
  ]
end
