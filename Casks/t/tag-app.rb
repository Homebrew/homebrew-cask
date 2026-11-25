cask "tag-app" do
  version "1.1.0"
  sha256 :no_check

  url "https://s3.amazonaws.com/feisty-dog/Tag.zip"
  name "Tag"
  desc "Music tag editor"
  homepage "https://www.feisty-dog.com/tag/"

  livecheck do
    url :homepage
    regex(/>\s*Tag\s+v?(\d+(?:\.\d+)+)\s*</i)
  end

  depends_on :macos

  app "Tag.app"

  zap trash: "~/Library/Preferences/com.feisty-dog.Tag.plist"
end
