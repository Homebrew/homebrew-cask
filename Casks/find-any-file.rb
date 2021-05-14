cask "find-any-file" do
  version "2.2.1"
  sha256 "7e3d2c53afc02aa39e3da928e03d8bea278cbe4f7bcc6db07094a627430b6d76"

  url "https://s3.amazonaws.com/files.tempel.org/FindAnyFile_#{version}.zip",
      verified: "s3.amazonaws.com/"
  name "Find Any File"
  desc "File finder"
  homepage "https://apps.tempel.org/FindAnyFile/"

  livecheck do
    url "https://findanyfile.app/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :el_capitan"

  app "Find Any File.app"

  zap trash: "~/Library/Application Support/Find Any File"
end
