cask "font-ma-shan-zheng" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mashanzheng/MaShanZheng-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ma Shan Zheng"
  homepage "https://fonts.google.com/specimen/Ma+Shan+Zheng"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ma Shan Zheng",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MaShanZheng-Regular.ttf"

  # No zap stanza required
end
