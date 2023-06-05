cask "find-any-file" do
  version "2.4"
  sha256 "d1dc4693729c479fc9ef02f8f42adfa487fb002b2a10519e5cbe41a8447d12e9"

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
