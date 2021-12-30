cask "find-any-file" do
  version "2.3.2"
  sha256 "7fc620cf8cbdd58961eb8ef37ad108d69f44b18932ac6b12817faa5e430c6c2b"

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
